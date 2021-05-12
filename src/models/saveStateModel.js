import { firestore } from '../firebase'

export const createDbSavedStates = async (obj, objId) => {
  try {
    await firestore.collection('savedStates').doc(objId).set(obj)
  } catch (err) {
    console.error(`Error at createDbSavedStates: ${err}`)
  }
}

export const getDbSavedStates = async (objId) => {
  try {
    const savedStatesRef = firestore.collection('savedStates').doc(objId)
    const savedStates = await savedStatesRef.get()

    if (!savedStates.exists) {
      console.error(`No such document: ${objId}`)
    } else {
      return savedStates.data()
    }
  } catch (err) {
    console.error(`Error at getDbSavedStates: ${err}`)
  }
}

export const deleteDbSavedStates = async (objId) => {
  try {
    await firestore.collection('savedStates').doc(objId).delete()
  } catch (err) {
    console.error(`Error at deleteDbSavedStates: ${err}`)
  }
}
