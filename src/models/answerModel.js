  
import { firestore } from '../firebase'

export const createDbAnswers = async (obj) => {
    try {
        await firestore.collection('answers').doc(obj.id).set(obj)
      } catch (err) {
        throw new Error(`Error at createDbUser: ${err}`)
      }
}
