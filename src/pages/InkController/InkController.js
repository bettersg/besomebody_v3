/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'
import { Box, Container, Typography } from '@material-ui/core'
import useInk from '../../lib/Ink/useInk'
import NotFoundPage from '../../components/NotFoundPage'
import WhatsApp from '../WhatsappPage/Whatsapp'
import Scene from '../ScenePage/Scene'
import InkControls from './InkControls'
import DefaultInk from '../DefaultInk'
import Survey from '../SurveyPage/Survey'
import { STORY_MAP } from '../../models/storyMap'


const getInkJson = (nameParam) => {
  switch (nameParam) {
    case 'nadid': {
      const nadidStory = STORY_MAP.find((story) => story.id === 1)
      const nadidChapter1 = nadidStory.chapters.find(
        (chapter) => chapter.id === 1
      )
      const json = nadidChapter1.inkJson
      return {
        inkJson: json,
        character: nadidStory.id,
        chapter: nadidChapter1.id,
      }
    }
    case 'aman': {
      const aman = STORY_MAP.find((story) => story.id === 2)
      const amanChapter1 = aman.chapters.find((chapter) => chapter.id === 1)
      const json = amanChapter1.inkJson
      return {
        inkJson: json,
        character: aman.id,
        chapter: amanChapter1.id,
      }
    }
    default: {
      return null
    }
  }
}

const getUi = ({
  currentParagraphs, 
  choices,
  specialTags,
  globalVariables,
  setChoice,
  getStory,
}) => {
  switch (specialTags.ui) {
    case 'scene': {
      return (
        <Scene
          currentParagraphs={currentParagraphs}
          getStory={getStory}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
          globalVariables={globalVariables}
        />
      )
    }
    case 'whatsapp': {
      return (
        <WhatsApp
          currentParagraphs={currentParagraphs}
          getStory={getStory}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
          globalVariables={globalVariables}
        />
      )
    }
    case 'survey': {
      // TODO: update this component 
      return (
        <Survey getStory={getStory} currentParagraphs={currentParagraphs} />
      )
    }
      
      // case reflection  - return a reflection component with argument for survey id from ink
      // <Reflection getstory surveyid />


    case 'school': {
      return (
        // to remove school from nadia's story
        <Scene
          currentParagraphs={currentParagraphs}
          getStory={getStory}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
          globalVariables={globalVariables}
        />
      )
    }
    default:
      return (
        <DefaultInk
          currentParagraphs={currentParagraphs}
          getStory={getStory}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
          globalVariables={globalVariables}
        />
      )
  }
}

const InkController = () => {
  const { name } = useParams()

  const { inkJson, character, chapter } = getInkJson(name)

  const {
    // States
    isStoryStarted,
    paragraphs,
    choices,
    specialTags,
    globalVariables,
    currentKnot,
    hasSavedState,

    // Methods
    getStory,
    setChoice,
    resetStory,
    startStoryFrom,
    saveStory,
    loadSavedStory,
    resetSavedStory,
  } = useInk(inkJson, character, chapter)

  // ==============================================================
  // Filter paragraphs based on current knot
  // ==============================================================
  const [currentParagraphs, setCurrentParagraphs] = useState([])

  useEffect(() => {
    if (currentKnot || paragraphs[paragraphs.length - 1]?.currentKnot) {
      const nextParagraphs = paragraphs.filter((paragraph) => {
        return paragraph.currentKnot === currentKnot
      })
      return setCurrentParagraphs([...nextParagraphs])
    }

    setCurrentParagraphs(paragraphs)
    // Run this useEffect whenever paragraphs or currentKnot get updated
  }, [paragraphs, currentKnot])

  /*
  // ===========
  // EXAMPLE
  // ===========
  useEffect(() => {
    // MOCK CONDITION: Save game only if global variables or the ui key in special tags exists
    if (globalVariables || specialTags.ui) {
      saveStory()
    }

    // MOCK CONDITION: Trigger this useEffect everytime global variables or the ui key in special tags updates
  }, [globalVariables, specialTags?.ui])
  */

  if (!inkJson) {
    return <NotFoundPage />
  }

  return (
    <Container maxWidth="lg" className="ink-controller">
      <Box >
        <Typography variant="overline" className="name">{name}</Typography>
      </Box>

      {getUi({
        currentParagraphs,
        getStory, 
        choices,
        specialTags,
        globalVariables,
        setChoice,
        getStory,
      })}

      {/* Render event triggers */}
      <InkControls
        isStoryStarted={isStoryStarted}
        hasSavedState={hasSavedState}
        getStory={getStory}
        resetStory={resetStory}
        startStoryFrom={startStoryFrom}
        saveStory={saveStory}
        loadSavedStory={loadSavedStory}
        resetSavedStory={resetSavedStory}
      />
    </Container>
  )
}

export default InkController
