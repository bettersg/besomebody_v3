import { firestore } from '../firebase'

export const createDbAnswers = async (obj) => {
    try {
      await firestore.collection('quizAnswers').doc(obj.id).set(obj)
    } catch (err) {
      throw new Error(`Error at createDbAnswers: ${err}`)
    }
  }