import { firestore} from '../firebase'

export const createReflectionLikes = (id, uidLike)=>{
  var likeRef = firestore.collection('reflectionResponses').doc(id);
  likeRef.get().then((doc) => {
    if (doc.exists) {
        
        if (doc.data().numLikes == null){
            likeRef.set({
                numLikes: 1,
                userLikes: [uidLike]
            },{merge: true})
            
        }
        if (doc.data().userLikes.includes(uidLike)) {
            console.log("User already liked this");
            return null
          }
        else{
            likeRef.update(
                {
                    numLikes: doc.data().numLikes + 1,
                    userLikes: [...doc.data().userLikes,uidLike]
                }
            )
            
        }
    } else {
        // doc.data() will be undefined in this case
        console.log("No such document!");
    }
}).catch((error) => {
    console.log("Error getting document:", error);
});

  }
