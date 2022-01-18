const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();
const firestore = admin.firestore();
const FieldValue = admin.firestore.FieldValue;


// Reflection counters

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


// Participant room IDs: for saved states, reflection responses, and quiz answers

/**
 * When a participant joins or leaves a room, add or delete the room accordingly from
 * the `participantRoomIds` field of all their saved states/reflection responses/quiz answers
 */
exports.updateParticipantRoomIds = functions.firestore
  .document('rooms/{docId}')
  .onWrite(async (change, context) => {
    function difference(arr1, arr2) {  // arr1 - arr2
      return arr1.filter(x => !arr2.includes(x));
    }

    // Adds the room ID to all of the participant's documents in the collection
    async function addRoomIdToParticipantDocuments(participantId, roomId, collection) {
      const snapshot = await firestore
        .collection(collection)
        .where('userId', '==', participantId)
        .get();
      await Promise.all(snapshot.docs.map(async (doc) => {
        const existingParticipantRoomIds = doc.data().participantRoomIds || [];
        const newParticipantRoomIds = [...existingParticipantRoomIds, roomId];
        return firestore
          .collection(collection)
          .doc(doc.id)
          .update({ participantRoomIds: newParticipantRoomIds });
      }));
    }

    // Deletes the room ID from all of the participant's documents in the collection
    async function deleteRoomIdFromParticipantDocuments(participantId, roomId, collection) {
      const snapshot = await firestore
        .collection(collection)
        .where('userId', '==', participantId)
        .get();
      await Promise.all(snapshot.docs.map(async (doc) => {
        const existingParticipantRoomIds = doc.data().participantRoomIds || [];
        const newParticipantRoomIds = existingParticipantRoomIds.filter(x => x !== roomId);
        const docRef = firestore.collection(collection).doc(doc.id);
        if (newParticipantRoomIds.length > 0) {
          return docRef.update({ participantRoomIds: newParticipantRoomIds });
        } else {
          return docRef.update({ participantRoomIds: FieldValue.delete() });
        }
      }));
    }

    const roomId = change.before.id;
    const beforeParticipantIds = change.before.exists ? change.before.data().participantIds : [];
    const afterParticipantIds = change.after.exists ? change.after.data().participantIds : [];
    const addedParticipantIds = difference(afterParticipantIds, beforeParticipantIds);
    const deletedParticipantIds = difference(beforeParticipantIds, afterParticipantIds);

    const collections = ['savedStates', 'reflectionResponses', 'quizAnswers'];
    for (const collection of collections) {
      await Promise.all(addedParticipantIds.map(async (addedParticipantId) => {
        return await addRoomIdToParticipantDocuments(addedParticipantId, roomId, collection);
      }));
      await Promise.all(deletedParticipantIds.map(async (deletedParticipantId) => {
        return await deleteRoomIdFromParticipantDocuments(deletedParticipantId, roomId, collection);
      }));
    }
  });

/**
 * When a new saved state/reflection response/quiz answer is created,
 * add its `participantRoomIds` field automatically
 */
async function addParticipantRoomIds(snap, context) {
  const { userId } = snap.data();
  const snapshot = await firestore
    .collection('rooms')
    .where('participantIds', 'array-contains', userId)
    .get();
  if (snapshot.docs.length === 0) return;
  const participantRoomIds = snapshot.docs.map(doc => doc.id);
  snap.ref.update({ participantRoomIds });
}

exports.addSavedStateParticipantRoomIds = functions.firestore
  .document('savedStates/{docId}')
  .onCreate(addParticipantRoomIds);

exports.addReflectionResponseParticipantRoomIds = functions.firestore
  .document('reflectionResponses/{docId}')
  .onCreate(addParticipantRoomIds);

exports.addQuizAnswerParticipantRoomIds = functions.firestore
  .document('quizAnswers/{docId}')
  .onCreate(addParticipantRoomIds);


// Facilitators: for rooms

async function getDbFacilitators(facilitatorIds) {
  const promises = facilitatorIds.map(id => firestore.collection('users').doc(id).get());
  const facilitators = await Promise.all(promises);
  const facilitatorsData = facilitators.map(facilitator => ({ id: facilitator.id, ...facilitator.data() }));
  return facilitatorsData;
}

/**
 * When a room is created, add its `facilitators` field automatically based on `facilitatorIds`
 */
exports.addFacilitatorsOnRoomCreate = functions.firestore
  .document('rooms/{docId}')
  .onCreate(async (snap, context) => {
    const facilitatorIds = snap.data().facilitatorIds;
    const facilitators = await getDbFacilitators(facilitatorIds);
    snap.ref.update({ facilitators });
  });

/**
 * When a room is updated, update its `facilitators` field automatically based on `facilitatorIds`
 * Note: be careful to prevent an infinite update loop!
 */
exports.updateFacilitatorsOnRoomUpdate = functions.firestore
  .document('rooms/{docId}')
  .onUpdate(async (change, context) => {
    if (!change.after.exists) return;
    const beforeFacilitatorIds = change.before.data().facilitatorIds;
    const afterFacilitatorIds = change.after.data().facilitatorIds;

    // prevent infinite update loop - proceed to update ONLY if `facilitatorIds` is changed
    if (beforeFacilitatorIds.sort().toString() == afterFacilitatorIds.sort().toString()) return;

    const facilitators = await getDbFacilitators(afterFacilitatorIds);
    change.after.ref.update({ facilitators });
  });
