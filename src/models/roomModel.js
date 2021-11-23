import { firestore} from '../firebase'


export const getRoomDb = async (roomId) => {
    try {
      const roomRef = firestore.collection('rooms').where('roomId','in','def456')
      const room = await roomRef.get()
      console.log('Room loaded:', roomId)
      if (!room.exists) {
        return console.error(`No such room in database: ${roomId}`)
      } else {
        return room.data()
      }
    } catch (err) {
      new Error(`Error at getDbroom: ${err}`)
    }    
  }
  


// export const updateRoomDb = (id, uidLike)=>{
//   var roomRef = firestore.collection('rooms').doc(id);
//   roomRef.get().then((doc) => {
//     if (doc.exists) {
        
//         if (doc.data().numLikes == null){
//             roomRef.set({
//                 numLikes: 1,
//                 roomLikes: [uidLike]
//             },{merge: true})
            
//         }
//         else{
//             roomRef.update(
//                 {
//                     numLikes: doc.data().numLikes + 1,
//                     roomLikes: [...doc.data().roomLikes,uidLike]
//                 }
//             )
            
//         }
//     } else {
//         // doc.data() will be undefined in this case
//         console.log("No such document!");
//     }
//     }).catch((error) => {
//         console.log("Error getting document:", error);
//     });

// }
