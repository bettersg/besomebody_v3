import { firestore } from '../firebase'

// Adds a like from `uidLike` to the reflection response `id`.
// Uses a Firestore transaction so concurrent likes cannot double-count
// `numLikes` or drop entries from `userLikes` (previously this was a
// non-atomic read-modify-write that also crashed on the first-ever like).
export const createReflectionLikes = async (id, uidLike) => {
  const likeRef = firestore.collection('reflectionResponses').doc(id)
  try {
    await firestore.runTransaction(async (transaction) => {
      const doc = await transaction.get(likeRef)
      if (!doc.exists) {
        console.log('No such document!')
        return
      }

      const data = doc.data()
      const userLikes = data.userLikes || []

      // Already liked by this user - nothing to do (keeps the like idempotent)
      if (userLikes.includes(uidLike)) {
        return
      }

      transaction.update(likeRef, {
        numLikes: (data.numLikes || 0) + 1,
        userLikes: [...userLikes, uidLike],
      })
    })
  } catch (error) {
    console.log('Error updating like:', error)
  }
}
