import { firestore } from '../firebase'

export const createDbUser = async (obj) => {
  try {
    await firestore.collection('users').doc(obj.id).set(obj)
  } catch (err) {
    console.error(`Error at createDbUser: ${err}`)
  }
}

export const getDbUser = async (objId) => {
  try {
    const userRef = firestore.collection('users').doc(objId)
    const user = await userRef.get()

    if (!user.exists) {
      console.error(`No such document: ${objId}`)
    } else {
      return user.data()
    }
  } catch (err) {
    console.error(`Error at getDbUser: ${err}`)
  }
}

export const updateDbUser = async (obj, objId) => {
  try {
    const userRef = firestore.collection('users').doc(objId || obj.id)
    const user = await userRef.update(obj)

    if (!userRef) {
      console.error(`No such document: ${objId}`)
    } else {
      return user.data()
    }
  } catch (err) {
    console.error(`Error at updateDbUser: ${err}`)
  }
}

export const deleteDbUser = async (userId) => {
  try {
    await firestore.collection('users').doc(userId).delete()
  } catch (err) {
    console.error(`Error at deleteDbUser: ${err}`)
  }
}
