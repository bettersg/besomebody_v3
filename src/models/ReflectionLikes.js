import { firestore} from '../firebase'

export const createReflectionLikes = (id, uidLike)=>{
  var washingtonRef = firestore.collection('reflectionResponses').doc(id);
  washingtonRef.get().then((doc) => {
    if (doc.exists) {
        
        if (doc.data().numLikes == null){
            washingtonRef.set({
                numLikes: 1,
                userLikes: [uidLike]
            },{merge: true})
            
        }
        else{
            washingtonRef.update(
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
