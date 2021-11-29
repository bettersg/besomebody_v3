import { firestore} from '../firebase'

  
  export const getRoomDb = async (roomCode) => {
    try {
      const roomRef = firestore.collection('rooms').where('roomCode','==',roomCode)
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
  
    const roomRef = firestore.collection('rooms').doc(id)
    roomRef.get().then((doc) => {
      if (doc.exists) {
        if (doc.data().numParticipants == null) {
          roomRef.set({ // or should it be set
            // numParticipants: 1,
            participants: [userId]
          },{merge: true})
        }
        if (doc.data().participants.includes(userId)) {
          console.log("User already exists in room");
          return null
        }
        else {
          roomRef.update(
            {
              // numParticipants: doc.data().numParticipants + 1,
              participants: [...doc.data().participants,userId]
            }
          )
        }
        
      } 
      else {
        console.log("No such document!");
      }
    }).catch((error) => {
      console.log("Error getting document:", error);
    });  
}

