import { firestore } from '../firebase'

export const createDbReflectionResponses = async (responses) => {
  try {
    const batch = firestore.batch();
    responses.forEach(answer => {
      const ref = firestore.collection("reflectionResponses").doc();
      batch.set(ref, answer);
    })
    await batch.commit();
  } catch (err) {
    throw new Error(`Error at createDbReflectionResponses: ${err}`)
  }
}

export const getDbReflectionResponses = async ({
  reflectionId,
  questionId,
}) => {
  try {
    const snapshot = await firestore.collection("reflectionResponses")
      .where('reflectionId', '==', reflectionId)
      .where('questionId', '==', questionId)
      .get();
    return snapshot.docs.map(doc => ({
      ...doc.data(),
      id: doc.id,
    }));
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponses: ${err}`)
  }
};