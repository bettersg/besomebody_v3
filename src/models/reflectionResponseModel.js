import { firestore} from '../firebase'
import { getDbUser } from './userModel';

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

const populateDbUserOnReflectionResponse = async (reflectionResponse) => {
  const user = await getDbUser(reflectionResponse.userId);
  return {
    ...reflectionResponse,
    user,
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
      // .orderBy("submittedAt", "desc")      
      .get();
    const reflectionResponses = snapshot.docs.map(doc => ({
      ...doc.data(),
      id: doc.id,
    }));
    return Promise.all(reflectionResponses.map(populateDbUserOnReflectionResponse))
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponses: ${err}`)
  }
};

export const getDbReflectionResponse = async(id) => {
  try {
    const doc = await firestore.collection("reflectionResponses").doc(id).get();
    return populateDbUserOnReflectionResponse({
      ...doc,
      id: doc.id,
    });
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponse: ${err}`);
  }
}
export const createReflectionLikes = async(id)=>{
  var reflLikesPosts = firestore.collection('reflectionResponses').doc(id)
  console.log(reflLikesPosts)

  await reflLikesPosts.update({
    numLikes : firestore.FieldValue.increment(1)
  })
}