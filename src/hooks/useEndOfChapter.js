import { firestore } from "../firebase";
import { useState, useEffect } from 'react';
import { useAuth } from '../contexts/AuthContext'
import { useSnackbar } from '../contexts/SnackbarContext'

// Performs complex save state logic at the end of each chapter.
export default function useEndOfChapter({ globalVariables = {} }) {
  const { character_id, chapter_id } = globalVariables;
  // console.log('useendofchapter global vars:',globalVariables)
  const { currentUser } = useAuth()
  const { setSnackbar } = useSnackbar()  
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);  

  useEffect(() => {
    return firestore
      .collection("users")
      .doc(currentUser.id)
      .onSnapshot(
        (snapshot) => {
          setLoading(false);
          setUser(snapshot.data());          
        },
        (error) => {
          setLoading(false);
          setError(error);
        }
      );
  }, [currentUser.id]);
//   console.log(user)
  // The ending the player just reached for this chapter.
  const currentEnding = globalVariables[`chapter_${chapter_id}_ending`]

  // Save the unlocked ending into the user's achievements. This runs inside a
  // Firestore transaction so overlapping renders can't double-write or drop an
  // ending, keys off the specific ending value (not the globalVariables object
  // identity, which changed every render and caused repeated writes), builds
  // the next achievements array immutably, and guards setState against unmount.
  useEffect(() => {
    if (!currentUser?.id || character_id == null || chapter_id == null || !currentEnding) {
      return
    }

    let isMounted = true

    const updateUserSaveGame = async () => {
      try {
        const userRef = firestore.collection('users').doc(currentUser.id)
        await firestore.runTransaction(async (transaction) => {
          const snapshot = await transaction.get(userRef)
          const userData = snapshot.data() || {}
          const achievements = userData.achievements || []
          const now = new Date().toISOString()

          const existingChapter = achievements.find(
            (achievement) =>
              achievement.character === character_id &&
              achievement.chapter === chapter_id
          )

          // Chapter never saved before: add a fresh achievement entry.
          if (!existingChapter) {
            const newAchievement = {
              createdAt: now,
              updatedAt: now,
              character: character_id,
              chapter: chapter_id,
              savedStateId: `${currentUser.id}-${character_id}`,
              endings: [{ id: currentEnding, completedAt: now }],
              ...(userData.activeRoom ? { roomCode: userData.activeRoom } : {}),
            }
            transaction.update(userRef, {
              achievements: [...achievements, newAchievement],
            })
            return
          }

          // Chapter saved, but this ending has not been unlocked yet.
          const hasCurrentEnding = existingChapter.endings.some(
            (ending) => ending.id === currentEnding
          )
          if (!hasCurrentEnding) {
            const nextAchievements = achievements.map((achievement) =>
              achievement.character === character_id &&
              achievement.chapter === chapter_id
                ? {
                    ...achievement,
                    updatedAt: now,
                    endings: [
                      ...achievement.endings,
                      { id: currentEnding, completedAt: now },
                    ],
                  }
                : achievement
            )
            transaction.update(userRef, { achievements: nextAchievements })
          }
        })
      } catch (err) {
        if (isMounted) {
          setSnackbar({
            message: `There was an error: ${err.message}`,
            open: true,
            type: 'error',
          })
        }
      }
    }

    updateUserSaveGame()

    return () => {
      isMounted = false
    }
  }, [character_id, chapter_id, currentEnding, currentUser.id, setSnackbar])

  return {
    user,
    character_id, 
    loading,
    error
  };
}
