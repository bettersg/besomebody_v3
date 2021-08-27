/* eslint-disable react-hooks/exhaustive-deps */
import React, { useMemo, useState, useEffect } from 'react'
import REFLECTIONS from '../../reflections/reflections.json'
import ReflectionForm from './shared/ReflectionForm'
import ChapterReflectionResponses from './chapter/ChapterReflectionResponses'
import ChapterComplete from './chapter/ChapterComplete'
import ChapterLearning from './chapter/ChapterLearning'
import AudioPlayer from "../../music/Music"

import Music from '../../music/tobeyou_outrolong.mp3'
import useEndOfChapter from '../../hooks/useEndOfChapter'

import {
  REFLECTION_PAGE_FORM,
  REFLECTION_PAGE_LEARNING,
  REFLECTION_PAGE_CHAPTER_COMPLETE,
  REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES,
} from './constants'

const Reflection = ({ reflectionId: propsReflectionId, globalVariables }) => {
  const { user } = useEndOfChapter({ globalVariables });

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

  const renderSwitch = (page) => {
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

  return (
    <>
       <AudioPlayer Music={Music} />      
      {renderSwitch(page)}
    </>


  )
    
}

  


export default Reflection



// <ReactAudioPlayer src={Music}  autoPlay loop id='audioplayer' />
