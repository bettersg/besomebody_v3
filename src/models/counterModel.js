import { firestore } from '../firebase'

export const getDbReflectionResponsesCount = async (reflectionId, questionId) => {
  try {
    const counter = await firestore
      .collection('counters')
      .doc(`reflectionResponses-${reflectionId}`)
      .get();
    return counter.exists ? counter.data().count : 0;
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponsesCount: ${err}`)
  }
}

export const getDbReflectionResponsesChoiceCount = async (reflectionId, questionId,choiceId) => {
  try {
    const counter = await firestore
      .collection('counters')
      .doc(`reflectionResponses-${reflectionId}-${questionId}-${choiceId}`)
      .get();
      return counter.exists ? counter.data().count : 0;
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponsesAnswerCount: ${err}`)
  }
}
