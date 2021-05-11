import { firestore } from '../firebase'

export const createDbUser = async (obj) => {
  try {
    await firestore.collection('users').doc(obj.id).set(obj)
  } catch (err) {
    console.error(`Error at createDbUser: ${err}`)
  }
}

export const deleteDbUser = async (userId) => {
  try {
    await firestore.collection('users').doc(userId).delete()
  } catch (err) {
    console.error(`Error at deleteDbUser: ${err}`)
  }
}
