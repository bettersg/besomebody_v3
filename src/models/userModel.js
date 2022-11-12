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
    new Error(`Error at getDbUser: ${err}`)
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
    await firestore.collection('users').doc(userId).delete()
  } catch (err) {
    throw new Error(`Error at deleteDbUser: ${err}`)
  }
}

export const updateUserRoomDb = async (userId, roomId) => {
  
    const userRef = firestore.collection('users').doc(userId)
    userRef.get().then((doc) => {
      if (doc.exists) {        
        if (doc.data().room == null) {
          userRef.set({
            room: [roomId]
          }, { merge: true })
        }        
        if (doc.data().room.includes(roomId)) {
          console.log("Room already exists for user");
          return null
        }
        else {
          userRef.update(
            {            
              room: [...doc.data().room, roomId]
            }
          )
        }
      }
   
    }).catch((error) => {
      console.log("Error getting document:", error);
    });  
}