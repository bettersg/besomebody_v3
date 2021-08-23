const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();
const firestore = admin.firestore();
const FieldValue = admin.firestore.FieldValue;

exports.incrementReflectionCounters = functions.firestore
  .document('reflectionResponses/{docId}')
  .onCreate(async (snap, context) => {
    const { reflectionId, questionId } = snap.data();
    if (questionId !== 3) return;  // maintain counter only for open-ended reflections

    const counterRef = firestore
      .collection('counters')
      .doc(`reflectionResponses-${reflectionId}-${questionId}`);
    const counter = await counterRef.get();

    if (!counter.exists) {
      await counterRef.set({ count: 1 });
    } else {
      await counterRef.update({ count: FieldValue.increment(1) });
    }
  });

// TODO: might need a decrement count on deleting reflection
