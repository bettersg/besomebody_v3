import { firestore } from '../firebase'

export const createDbAnswers = async (answers) => {
  try {
    const batch = firestore.batch();
    answers.forEach(answer => {
      const ref = firestore.collection("answers").doc();
      batch.set(ref, answer);
    })
    await batch.commit();
  } catch (err) {
    throw new Error(`Error at createDbAnswers: ${err}`)
  }
}

export const getDbAnswers = async () => {
  try {
    const snapshot = await firestore.collection("answers").get();
    return snapshot.docs.map(doc => doc.data());
  } catch (err) {
    throw new Error(`Error at getDbAnswers: ${err}`)
  }
};
