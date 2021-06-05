/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'
import { Box, Container, Typography } from '@material-ui/core'
import NadidInk from '../../stories/nadid.ink.json'
import DavidInk from '../../stories/test2.ink.json'
import useInk from '../../lib/Ink/useInk'
import NotFoundPage from '../../components/NotFoundPage'
import WhatsApp from '../WhatsappPage/Whatsapp'
import School from '../SchoolPage/School'
import InkControls from './InkControls'
import DefaultInk from '../DefaultInk'

const getInkJson = (nameParam) => {
  switch (nameParam) {
    case 'nadid': {
      return NadidInk
    }
    case 'david': {
      return DavidInk
    }
    default: {
      return null
    }
  }
}

const getUi = ({
  currentParagraphs,
  getStory, 
  choices,
  specialTags,
  globalVariables,
  setChoice,
}) => {
  switch (specialTags.ui) {
    case 'school': {
      return (
        <School
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
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
          globalVariables={globalVariables}
        />
      )
    }
    case 'instagram': {
      return (
        // to change to an instagram
        <WhatsApp 
          currentParagraphs={currentParagraphs}
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

  const inkJson = getInkJson(name)

  const {
    // States
    isStoryStarted,
    paragraphs,
    choices,
    specialTags,
    globalVariables,
    currentChapter,
    hasSavedState,

    // Methods
    getStory,
    setChoice,
    resetStory,
    startStoryFrom,
    saveStory,
    loadSavedStory,
    resetSavedStory,
  } = useInk(inkJson, name)

  // ==============================================================
  // Filter paragraphs based on current chapter
  // ==============================================================
  const [currentParagraphs, setCurrentParagraphs] = useState([])

  useEffect(() => {
    if (currentChapter || paragraphs[paragraphs.length - 1]?.currentChapter) {
      const nextParagraphs = paragraphs.filter((paragraph) => {
        return paragraph.currentChapter === currentChapter
      })
      return setCurrentParagraphs([...nextParagraphs])
    }

    setCurrentParagraphs(paragraphs)
    // Run this useEffect whenever paragraphs or currentChapter get updated
  }, [paragraphs, currentChapter])

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
