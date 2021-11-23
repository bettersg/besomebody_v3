import { firestore} from '../firebase'

  
  export const getRoomDb = async (roomId) => {
    try {
      const roomRef = firestore.collection('rooms').where('roomId','in',roomId)
      const room = await roomRef.get()
  
      if (!room.exists) {
        return console.error(`No such room in Firestore: ${roomId}`)
      }
      else {
        // console.log('model',room)
        return room.data()
      }
    } catch (err) {
      new Error(`Error at getDbroom: ${err}`)
    }
  }
  
