import { firestore } from '../firebase'

export const getDbReflectionResponsesCount = async (reflectionId, questionId) => {
  try {
    const counter = await firestore
      .collection('counters')
      .doc(`reflectionResponses-${reflectionId}-${questionId}`)
      .get();
    return counter.exists ? counter.data().count : 0;
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponsesCount: ${err}`)
  }
}
