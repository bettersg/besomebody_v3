import { firestore } from '../firebase'

export const createDbSavedStates = (obj) => {
  return new Promise((resolve, reject) => {
    firestore
      .collection('savedStates')
      .add(obj)
      .then((res) => {
        firestore
          .collection('savedStates')
          .doc(res.id)
          .update({ id: res.id })
          .then((finalResult) => {
            resolve(finalResult)
          })
          .catch((err) => {
            reject(err)
          })
      })
      .catch((err) => {
        reject(err)
      })
  })
}

export const getDbSavedStates = (userId, inkName) => {
  return new Promise((resolve, reject) => {
    firestore
      .collection('savedStates')
      .where('userId', '==', userId)
      .where('inkName', '==', inkName)
      .get()
      .then((res) => {
        const savedStates = []
        res.forEach((profile) => {
          savedStates.push(profile.data())
        })
        resolve(savedStates[0])
      })
      .catch((err) => {
        reject(err)
      })
  })
}

export const deleteDbSavedStates = (userId, inkName) => {
  return new Promise((resolve, reject) => {
    firestore
      .collection('savedStates')
      .where('userId', '==', userId)
      .where('inkName', '==', inkName)
      .get()
      .then((res) => {
        const savedStates = []
        res.forEach((profile) => {
          savedStates.push(profile.data())
        })
        firestore
          .collection('savedStates')
          .doc(savedStates[0].id)
          .delete()
          .then((finalResult) => {
            resolve(finalResult)
          })
          .catch((err) => {
            reject(err)
          })
      })
      .catch((err) => {
        reject(err)
      })
  })
}
