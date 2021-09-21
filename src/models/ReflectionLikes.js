import { firestore} from '../firebase'

export const createReflectionLikes = (id, uidLike)=>{
  var ReflectionIdRef = firestore.collection('reflectionResponses').doc(id);
  ReflectionIdRef.get().then((doc) => {
    if (doc.exists) {
        
        if (doc.data().numLikes == null){
            ReflectionIdRef.set({
                numLikes: 1,
                userLikes: [uidLike]
            },{merge: true})
            
        }
        else{
            ReflectionIdRef.update(
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

  //get the reflection likes 
  export const getUserReflectionLikes = (reflectionid, useridLikeRefl)=>{
      var responsesRelatedToReflectionID = firestore.collection('reflectionResponses').doc(reflectionid);
      responsesRelatedToReflectionID.get().then((doc)=>{
          if(doc.exists) {
              //check for the userid if in reflection likes 
              //return true if exists 
              //else return false 
              if(doc.data().userLikes.includes(useridLikeRefl)){
                  return true;
              }
              return false;
          }
      })
  }
