import { firestore} from '../firebase'

  
  export const getRoomDb = async (roomCode) => {
    try {
      const roomRef = firestore.collection('rooms').where('code','==',roomCode)
      const snapshot = await roomRef.get()
      if (snapshot.docs.length === 0) {
        return console.error(`No such room exists: ${roomCode}`)
      }      
      else {
        const roomDoc = snapshot.docs[0]
        const room = { ...roomDoc.data(), id: roomDoc.id }
        return room
      }
    } catch (err) {
      throw new Error(`Error at getRoomDb: ${err}`)
    }
  }



export const updateRoomParticipantsDb = async (id, userId) => {
  const roomRef = firestore.collection('rooms').doc(id)
  try {
    // Transaction so simultaneous joins don't overwrite each other's
    // participant list, and guard against a missing `participantIds` array.
    await firestore.runTransaction(async (transaction) => {
      const doc = await transaction.get(roomRef)
      if (!doc.exists) {
        throw new Error("Room does not exist")
      }
      const existingParticipantIds = doc.data().participantIds || []
      if (existingParticipantIds.includes(userId)) {
        return
      }
      transaction.update(roomRef, {
        participantIds: [...existingParticipantIds, userId],
      })
    })
  } catch (err) {
    throw new Error(`Error at updateRoomParticipantsDb: ${err}`)
  }
}

