import React, { useMemo, useState, useEffect } from 'react';
import REFLECTIONS from "../../reflections/reflections.json"

import ReflectionForm from './shared/ReflectionForm';
import ChapterReflectionResponses from './chapter/ChapterReflectionResponses';
import ChapterComplete from './chapter/ChapterComplete';
import StoryComplete from './story/StoryComplete';
import { REFLECTION_PAGE_FORM, REFLECTION_PAGE_STORY_COMPLETE, REFLECTION_PAGE_CHAPTER_COMPLETE, REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from './constants';

const Reflection = ({ reflectionId }) => {
  const [page, setPage] = useState(REFLECTION_PAGE_CHAPTER_COMPLETE);
  
  console.log(reflectionId)

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
      return <ReflectionForm reflection={reflection} />;
    default:
      return null;
  }
}

export default Reflection;