const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();
const firestore = admin.firestore();
const FieldValue = admin.firestore.FieldValue;

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

// Remove email field from users collection

exports.removeEmailFieldFromUsersOnCreate = functions.firestore
  .document('users/{docId}')
  .onCreate(async (snap, context) => {
    const { email } = snap.data();
    if (!email) return;
    const userRef = snap.ref;
    await userRef.update({
      email: FieldValue.delete(),
    });
  });

exports.removeEmailFieldFromUsersOnUpdate = functions.firestore
  .document('users/{docId}')
  .onUpdate(async (change, context) => {
    const { email } = change.after.data();
    if (!email) return;
    const userRef = change.after.ref;
    await userRef.update({
      email: FieldValue.delete(),
    });
  });
