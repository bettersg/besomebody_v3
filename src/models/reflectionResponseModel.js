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

export const getDbReflectionResponsesPaginated = async ({
  lastDocSnapshot,
  limit,
  reflectionIds,
  questionId,
}) => {
  try {
    let query = firestore.collection('reflectionResponses')
      .where('reflectionId', 'in', reflectionIds)
      .where('questionId', '==', questionId)
      // .where('answer', '!=', '')  // TODO: uncomment after composite index is deployed
      .orderBy('submittedAt', 'desc')
      .limit(limit);
    if (lastDocSnapshot) {
      query = query.startAfter(lastDocSnapshot);
    }
    const snapshot = await query.get();
    const newLastDocSnapshot = snapshot.docs[snapshot.docs.length - 1];
    const responsePromises = snapshot.docs
      .map(doc => ({ ...doc.data(), id: doc.id }))
      .map(populateDbUserOnReflectionResponse);
    const newResponses = await Promise.all(responsePromises);
    return { newResponses, newLastDocSnapshot };
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponsesPaginated: ${err}`);
  }
}

// export const getDbReflectionResponses = async ({
//   reflectionId,
//   questionId,
// }) => {
//   try {
//     const snapshot = await firestore.collection("reflectionResponses")
//       .where('reflectionId', '==', reflectionId)
//       .where('questionId', '==', questionId)      
//       // .orderBy("submittedAt", "desc")      
//       .get();
//     const reflectionResponses = snapshot.docs.map(doc => ({
//       ...doc.data(),
//       id: doc.id,
//     }));
//     return Promise.all(reflectionResponses.map(populateDbUserOnReflectionResponse))
//   } catch (err) {
//     throw new Error(`Error at getDbReflectionResponses: ${err}`)
//   }
// };

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


/**
 * Gets reflection responses for a given room code.
 * `reflectionId`: optional number for filtering for reflectionId
 * `getOnlyReflections`: optional boolean for getting only verbatim (long-form) reflections
 */ 
export const getDbReflectionResponseByRoomCode = async (
  roomCode,
  reflectionId,
  
) => {
  try {
    reflectionId = parseInt(reflectionId);
    let query = firestore
      .collection('reflectionResponses')
      .where('roomCode', '==', roomCode)
      .where('reflectionId', '==', reflectionId)
      .where('questionId' , '==', 3) // hardcoded to the longform responses
      ;
    
    
    const snapshot = await query.get();
    const savedStates = snapshot.docs.map((doc) => ({
      id: doc.id,
      ...doc.data(),
    }));
    return savedStates;
  } catch (err) {
    throw new Error(`Error at getDbReflectionResponses: ${err}`);
  }
};
