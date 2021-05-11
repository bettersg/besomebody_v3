import { firestore } from '../firebase'

export const createDbUser = (obj) => {
  return new Promise((resolve, reject) => {
    firestore
      .collection('users')
      .doc(obj.id)
      .set(obj)
      .then((res) => {
        resolve(res)
      })
      .catch((err) => {
        reject(err)
      })
  })
}

export const deleteDbUser = (userId) => {
  return new Promise((resolve, reject) => {
    firestore
      .collection('users')
      .doc(userId)
      .delete()
      .then((res) => {
        resolve(res)
      })
      .catch((err) => {
        reject(err)
      })
  })
}
