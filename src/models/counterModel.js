import { firestore } from '../firebase'

export const getDbReflectionResponsesCounts = async (reflectionIds) => {
  try {
    const countPromises = reflectionIds.map(reflectionId => getDbReflectionResponsesCount(reflectionId));
    const counts = await Promise.all(countPromises);
    const countSum = counts.reduce((acc, i) => acc + i, 0);
    return countSum;
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponsesCounts: ${err}`)
  }
}

export const getDbReflectionResponsesCount = async (reflectionId) => {
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
