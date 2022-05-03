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
      new Error(`Error at getRoomDb: ${err}`)
    }
  }
  


export const updateRoomParticipantsDb = async (id, userId) => {
  try {
    const roomRef = firestore.collection('rooms').doc(id)
    const doc = await roomRef.get()
    if (!doc.exists) {
      throw new Error("Room does not exist")
    }
    const existingParticipantIds = doc.data().participantIds
    if (existingParticipantIds.includes(userId)) {
      console.log("User already exists in room")
      return null
    }
    const newParticipantIds = [...existingParticipantIds, userId]
    roomRef.update({ participantIds: newParticipantIds })
  } catch (err) {
    throw new Error(`Error at updateRoomParticipantsDb: ${err}`)
  }
}

