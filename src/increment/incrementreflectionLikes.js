const admin = require('firebase-admin');

admin.initializeApp();
const firestore = admin.firestore();
const FieldValue = admin.firestore.FieldValue;

//generate likes for the post
export const createReflectionLikes = async(reflectionId)=>{
    try{
    var reflLikesPosts = firestore.collection('reflectionResponses').doc('reflectionLikes')
    
    firestore.batch().set(reflLikesPosts, {
      reflectionId : reflectionId,
      numLikes : FieldValue.increment(1)
    });
  
    await firestore.batch().commit();
  }
  catch(err){
  
    console.log('liked unsuccessfully')
    console.log(err)
  }
  }