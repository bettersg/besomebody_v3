/* eslint-disable react-hooks/exhaustive-deps */
import React, { useMemo, useState, useEffect } from 'react'
import REFLECTIONS from '../../reflections/reflections.json'
import ReflectionForm from './shared/ReflectionForm'
import ChapterReflectionResponses from './chapter/ChapterReflectionResponses'
import ChapterComplete from './chapter/ChapterComplete'
import StoryComplete from './story/StoryComplete'
import ChapterLearning from './chapter/ChapterLearning'

import {
  REFLECTION_PAGE_FORM,
  REFLECTION_PAGE_STORY_COMPLETE,
  REFLECTION_PAGE_LEARNING,
  REFLECTION_PAGE_CHAPTER_COMPLETE,
  REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES,
} from './constants'
import { getDbUser, updateDbUser } from '../../models/userModel'
import { useAuth } from '../../contexts/AuthContext'
import { useSnackbar } from '../../contexts/SnackbarContext'
import { firestore } from "../../firebase";

const Reflection = ({ reflectionId: propsReflectionId, globalVariables }) => {
  const { character_id, chapter_id } = globalVariables || {}
  const { currentUser } = useAuth()
  const { setSnackbar } = useSnackbar()
  const [loading, setLoading] = useState(true);
  const [user, setUser] = useState(null);
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
  console.log(user)
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
  }, [])


  // Reflection variables and states
  const reflectionId =
    typeof propsReflectionId === 'string'
      ? parseInt(propsReflectionId, 10)
      : propsReflectionId

  const [page, setPage] = useState(REFLECTION_PAGE_CHAPTER_COMPLETE)

  useEffect(() => {
    setPage(REFLECTION_PAGE_CHAPTER_COMPLETE)
  }, [reflectionId])

  const reflection = useMemo(
    () => REFLECTIONS.find((reflection) => reflection.id === reflectionId),
    [reflectionId]
  )

  switch (page) {
    case REFLECTION_PAGE_CHAPTER_COMPLETE:
      return <ChapterComplete setPage={setPage} user={user} />
    case REFLECTION_PAGE_LEARNING:
      return <ChapterLearning setPage={setPage} reflection={reflection} />
    case REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES:
      return (
        <ChapterReflectionResponses
          reflectionId={reflectionId}
          setPage={setPage}
        />
      )
    // case REFLECTION_PAGE_STORY_COMPLETE:
    //   return <StoryComplete setPage={setPage} />
    case REFLECTION_PAGE_FORM:
      return reflection ? <ReflectionForm reflection={reflection} /> : null
    default:
      return null
  }
}

export default Reflection
