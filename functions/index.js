const functions = require('firebase-functions');
const admin = require('firebase-admin');
const gcpFirestore = require('@google-cloud/firestore');
const firestoreClient = new gcpFirestore.v1.FirestoreAdminClient();
const axios = require('axios');

admin.initializeApp();
const firestore = admin.firestore();
const FieldValue = admin.firestore.FieldValue;

const backupBucket = 'gs://besomebody-firestore-export';

exports.incrementReflectionCounters = functions.firestore
  .document('reflectionResponses/{docId}')
  .onCreate(async (snap, context) => {
    const { reflectionId, questionId } = snap.data();
    if (questionId !== 3) return;  // this question appears in every reflectionId and hence is a reliable measure of the total number of reflections submitted

    const counterRef = firestore
      .collection('counters')
      .doc(`reflectionResponses-${reflectionId}`);
    const counter = await counterRef.get();

    if (!counter.exists) {
      await counterRef.set({ count: 1 });
    } else {
      await counterRef.update({ count: FieldValue.increment(1) });
    }
  });

// TODO: might need a decrement count on deleting reflection -> Noted, but we do not provide this as a client-side function now, so any deletion will be manual (ie from admin ui). decrement can be manual also.
// Nadia 1 counter as at fri 27 aug 10:47am = 1494
// Nadia 2 counter = 363
// Aman 1 counter = 734 (but based on old story)


exports.incrementReflectionChoiceCounters = functions.firestore
  .document('reflectionResponses/{docId}')
  .onCreate(async (snap, context) => {
    const { reflectionId, questionId, choiceId } = snap.data();
    if (!choiceId) return;  // only keep track of multiple-choice questions with defined choiceIds

    const choiceRef = firestore
      .collection('counters')
      .doc(`reflectionResponses-${reflectionId}-${questionId}-${choiceId}`);
    const choiceCounter = await choiceRef.get();

    if (!choiceCounter.exists) {
      await choiceRef.set({ count: 1 });
    } else {
      await choiceRef.update({ count: FieldValue.increment(1) });
    }
  });

  exports.backupFirestore = functions.pubsub
    .schedule('0 0 1 * *')
    .onRun(async () => {
      const projectId = process.env.GCP_PROJECT || process.env.GCLOUD_PROJECT
      const databaseName = firestoreClient.databasePath(projectId, '(default)')
      
      return firestoreClient
        .exportDocuments({
          name: databaseName,
          outputUriPrefix: backupBucket,
          // Leave collectionIds empty to export all collections
          // or set to a list of collection IDs to export,
          // collectionIds: ['users', 'posts']
          collectionIds: []
        })
        .then(([response]) => {
          console.log(`Operation Name: ${response.name}`)
          return response
        })
        .catch(err => {
          console.error(err)
          throw new Error('Export operation failed')
        })
  
    })

// APIs for functionalities involving other users' emails

function isUserFacilitatorForRoom(userId, room) {
  const roomData = room.data()
  return room.exists && roomData.facilitatorIds && roomData.facilitatorIds.includes(userId)
}

async function getDbRoom(roomId) {
  const room = await firestore.collection('rooms').doc(roomId).get();
  const roomData = room.data();
  return { room, roomData };
}

async function sendInviteCoFacilitatorEmail(roomCode, toEmail, message) {
  await axios.post('https://api.emailjs.com/api/v1.0/email/send',{
    service_id: 'service_q3gnqrp',
    template_id: 'template_6oavgta',
    user_id: 'user_kmfKhjRSSwoovXNarQivp',
    template_params: {
      message: message,
      room_code: roomCode,
      to_email: toEmail,
    },
    accessToken: process.env.EMAILJS_ACCESS_TOKEN,
  });
}


// Input: roomId
// Output: list of co-facilitator emails for that room
// Requirements: user is authenticated and is a facilitator for that room
exports.getCoFacilitatorEmailsForRoom = functions.https
  .onCall(async (data, context) => {
    const userId = context.auth && context.auth.uid;
    const { roomId } = data;
    if (!userId) return;

    const { room, roomData } = await getDbRoom(roomId);
    if (!isUserFacilitatorForRoom(userId, room)) return;

    const coFacilitatorEmails = Promise.all(roomData.facilitatorIds.map(async (coFacilitatorId) => {
      const emailDoc = await firestore.collection('emails').doc(coFacilitatorId).get();
      const email = emailDoc.data().email;
      return email
    }));
    return coFacilitatorEmails;
  });

// Input: roomId
// Output: map of participant user IDs to their emails for that room
// Requirements: user is authenticated and is a facilitator for that room
exports.getParticipantIdsToEmailsForRoom = functions.https
  .onCall(async (data, context) => {
    const userId = context.auth && context.auth.uid;
    const { roomId } = data;
    if (!userId) return;

    const { room, roomData } = await getDbRoom(roomId);
    if (!isUserFacilitatorForRoom(userId, room)) return;

    const participantIdEmailMap = {};
    await Promise.all(roomData.participantIds.map(async (participantId) => {
      const participant = await firestore.collection('emails').doc(participantId).get();
      const participantEmail = participant.data().email;
      participantIdEmailMap[participantId] = participantEmail;
    }));
    return participantIdEmailMap;
  });

// Input: roomId, toEmail
// Output: { success: boolean, message: string }
// Requirements: user is authenticated and is a facilitator for that room
exports.inviteUserToBeCofacilitatorForRoom = functions.https
  .onCall(async (data, context) => {
    const userId = context.auth && context.auth.uid;
    const { roomId, toEmail } = data;
    if (!userId) return;

    const { room, roomData } = await getDbRoom(roomId);
    if (!isUserFacilitatorForRoom(userId, room)) return;

    const fromEmail = (context.auth.token && context.auth.token.email) || '<no-email>';
    const roomCode = roomData.code;
    const snapshot = await firestore.collection('emails').where('email', '==', toEmail).get();
    if (snapshot.empty) {
        // Failure (user to be invited as co-facilitator does not exist): send failure email
      const message = `
        You were invited by your colleague at ${fromEmail} to be a co-facilitator for the room ${roomCode} for ToBeYou.sg.
        Unfortunately, you do not yet have an account in the game.
        Creating an account is free and easy -
        just go to https://game.tobeyou.sg and create an account,
        then let your colleague know the email address that you used to register so that they can add you again.
        Once they have added you, you can go to your facilitator dashboard to access the room.
      `;
      sendInviteCoFacilitatorEmail(roomCode, toEmail, message);
      return {
        success: false,
        message: `There is no account with email ${toEmail}. We've sent them an email inviting them to sign up with us.`,
      }
    }

    const toUser = snapshot.docs[0]
    const toUserAlreadyCoFacilitatorInRoom = roomData.facilitatorIds.includes(toUser.id);
    if (toUserAlreadyCoFacilitatorInRoom) {
      // Failure (user to be invited as co-facilitator is already a co-facilitator already in room)
      return {
        success: false,
        message: `The facilitator with email '${toEmail}' is already in the room.`
      }
    }

    // Success (user to be invited as co-facilitator exists): add co-facilitator to room and send success email
    const message = `
      You have been added by your colleague at ${fromEmail} as a co-facilitator for room ${room.code} for ToBeYou.sg.
      The room should now be available in your facilitator dashboard.
    `;
    sendInviteCoFacilitatorEmail(roomCode, toEmail, message);
    return {
      success: true,
      message: `Success! We've sent an email to ${toEmail} to notify them that they've been added to the room.`,
    }
  });