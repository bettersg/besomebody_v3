import { getDbUser, updateDbUser } from '../models/userModel'
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
  // const userDB = async ()  => {return await getDbUser(currentUser.id) } 
  
  // console.log(globalVariables)
  // Save user achievements data to Firestore whenever this component renders
  useEffect(() => {
    const updateUserSaveGame = async () => {
      try {
        // Helper variables
        const currentUserDb = await getDbUser(currentUser.id)
        const currentEnding = globalVariables[`chapter_${chapter_id}_ending`]        
        const currentChapterInUserDb = currentUserDb?.achievements?.find(
          (achievement) =>
            achievement.character === character_id &&
            achievement.chapter === chapter_id
        )
        const hasCurrentEnding = currentChapterInUserDb
          ? Boolean(
              currentChapterInUserDb.endings.find(
                (ending) => ending.id === currentEnding
              )
            )
          : false
          console.log(hasCurrentEnding)
        // If current character and chapter has not been saved before
        if (!currentChapterInUserDb) {          
          const saveData = {
            createdAt: new Date().toISOString(),
            updatedAt: new Date().toISOString(),
            character: character_id,
            chapter: chapter_id,
            savedStateId: `${currentUserDb?.id}-${character_id}`,
            endings: [
              {
                id: currentEnding,
                completedAt: new Date().toISOString(),
              },
            ],
          }

          const nextAchievements = currentUserDb?.achievements || []
          const newAchievements = nextAchievements.concat(saveData)
          await updateDbUser({ achievements: newAchievements }, currentUserDb.id)          
        }

        // If current character and chapter has been saved before, but current ending has not been unlocked before
        if (currentChapterInUserDb && !hasCurrentEnding) {
          const newAchievements = currentUserDb?.achievements.map(
            (achievement) => {
              if (
                achievement.character === character_id &&
                achievement.chapter === chapter_id
              ) {
                const newEnding = {
                  id: currentEnding,
                  completedAt: new Date().toISOString(),
                }
                const nextEndings = achievement.endings.concat(newEnding)
                achievement.endings = nextEndings
                return achievement
              }

              return achievement
            }
          )
          await updateDbUser({ achievements: newAchievements }, currentUserDb.id)
        }
      } catch (err) {
        setSnackbar({
          message: `There was an error: ${err.message}`,
          open: true,
          type: 'error',
        })
      }
      // setIsLoading(false);
    }
    updateUserSaveGame()
  }, [chapter_id, character_id, currentUser.id, globalVariables, setSnackbar])

  return {
    user,
    character_id, 
    loading,
    error
  };
}
