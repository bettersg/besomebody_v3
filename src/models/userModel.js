import { firestore } from '../firebase'

export const createDbUserIfNotExists = async (userId, userEmail) => {
  try {
    const userRef = firestore.collection('users').doc(userId)
    const user = await userRef.get()
    if (!user.exists) {
      const batch = firestore.batch()
      batch.set(userRef, {id: userId})
      const emailRef = firestore.collection('emails').doc(userId)
      batch.set(emailRef, {email: userEmail})
      await batch.commit()
      return true
    } else {
      return false
    }
  } catch (err) {
    throw new Error(`Error at createDbUserIfNotExists: ${err}`)
  }
}

export const getDbUser = async (objId) => {
  try {
    const userRef = firestore.collection('users').doc(objId)
    const user = await userRef.get()

    if (!user.exists) {
      return console.error(`No such user in Firestore: ${objId}`)
    } else {
      return user.data()
    }
  } catch (err) {
    throw new Error(`Error at getDbUser: ${err}`)
  }
}

export const updateDbUser = async (obj, objId) => {
  try {
    const userRef = firestore.collection('users').doc(objId || obj.id)
    await userRef.update(obj)

    if (!userRef) {
      return console.error(`No such user in Firestore: ${objId}`)
    } else {
      const user = await userRef.get()
      const currentUserData = user.data()
      console.log('Progress Saved')
      return currentUserData
    }
  } catch (err) {
    throw new Error(`Error at updateDbUser: ${err}`)
  }
}

export const deleteDbUser = async (userId) => {
  try {
    // Delete the user doc and their email doc together so PII in `emails`
    // is not orphaned (which also prevents later null-deref in the
    // facilitator email Cloud Functions).
    const batch = firestore.batch()
    batch.delete(firestore.collection('users').doc(userId))
    batch.delete(firestore.collection('emails').doc(userId))
    await batch.commit()
  } catch (err) {
    throw new Error(`Error at deleteDbUser: ${err}`)
  }
}

export const updateUserRoomDb = async (userId, roomId) => {
  const userRef = firestore.collection('users').doc(userId)
  try {
    // Transaction so concurrent joins cannot drop rooms or crash on a
    // missing `room` array (the previous version fell through to
    // `doc.data().room.includes` when `room` was null).
    await firestore.runTransaction(async (transaction) => {
      const doc = await transaction.get(userRef)
      if (!doc.exists) return

      const rooms = doc.data().room || []
      if (rooms.includes(roomId)) return

      transaction.set(userRef, { room: [...rooms, roomId] }, { merge: true })
    })
  } catch (error) {
    throw new Error(`Error at updateUserRoomDb: ${error}`)
  }
}