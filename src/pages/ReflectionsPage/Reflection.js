import React, { useMemo, useState, useEffect } from 'react';
import REFLECTIONS from "../../reflections/reflections.json"

import ReflectionForm from './shared/ReflectionForm';
import ChapterReflectionResponses from './chapter/ChapterReflectionResponses';
import ChapterComplete from './chapter/ChapterComplete';
import StoryComplete from './story/StoryComplete';
import { REFLECTION_PAGE_FORM, REFLECTION_PAGE_STORY_COMPLETE, REFLECTION_PAGE_CHAPTER_COMPLETE, REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from './constants';

import { updateDbUser } from '../../models/userModel'
import { useAuth } from '../../contexts/AuthContext'

import { useSnackbar } from '../../contexts/SnackbarContext'



const Reflection = ({ reflectionId: propsReflectionId , globalVariables}) => {
  // console.log("test1:", globalVariables);

  const { currentUser } = useAuth();
  
  const { setSnackbar } = useSnackbar();

  useEffect(() => {
    // console.log("test2:",globalVariables);

    const updateUserSaveGame = async () => {
      const saveStateData = [globalVariables];
      try {
        await updateDbUser(globalVariables, currentUser.id);
      } catch (err) {
        setSnackbar({
          message: `There was an error: ${err.message}`,
          open: true,
          type: 'error',
        })
      }
      // setIsLoading(false);
    }
    updateUserSaveGame();
  },[])

  const reflectionId = typeof propsReflectionId === "string" ? parseInt(propsReflectionId, 10) : propsReflectionId;

  const [page, setPage] = useState(REFLECTION_PAGE_CHAPTER_COMPLETE);

  useEffect(() => {
    setPage(REFLECTION_PAGE_CHAPTER_COMPLETE);
  }, [reflectionId]);

  const reflection = useMemo(
    () => REFLECTIONS.find(reflection => reflection.id === reflectionId),
    [reflectionId],
  );

  switch (page) {
    case REFLECTION_PAGE_CHAPTER_COMPLETE:
      return <ChapterComplete setPage={setPage} />
    case REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES:
      return <ChapterReflectionResponses reflectionId={reflectionId} setPage={setPage} />
    // case REFLECTION_PAGE_STORY_COMPLETE:
    //   return <StoryComplete setPage={setPage} />
    case REFLECTION_PAGE_FORM:
      return reflection ? <ReflectionForm reflection={reflection} /> : null;
    default:
      return null;
  }
}

export default Reflection;