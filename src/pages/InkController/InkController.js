import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'
import { Box, Container, Typography } from '@material-ui/core'
import NotFoundPage from '../../components/NotFoundPage'
import WhatsApp from '../WhatsappPage/Whatsapp'
import Scene from '../ScenePage/Scene'
import InkControls from './InkControls'
import DefaultInk from '../DefaultInk'
import Survey from '../SurveyPage/Survey'
import MultipleChoiceQuiz from '../MiniGames/MultipleChoice/MultipleChoiceQuiz'
import SwipeQuiz from '../MiniGames/Swipe/SwipeQuiz'
import { CHARACTER_MAP } from '../../models/storyMap'
import { useInkContext } from '../../contexts/InkContext'
import Narrator from '../NarratorPage/Narrator'

import NadiaInk from '../../stories/nadia.ink.json'
import AmanInk from '../../stories/aman.ink.json'


const getInkJson = (nameParam) => {
  switch (nameParam) {
    case 'nadia': {
      const nadiaStory = CHARACTER_MAP.find((story) => story.id === 1)
      // const nadidChapter1 = nadidStory.chapters.find(
      // (chapter) => chapter.id === 1)
      // const json = nadidStory.jsonFile
      return {
        inkJson: NadiaInk,
        characterId: 1,
        chapterId: 1,
      }
    }
    case 'aman': {
      const aman = CHARACTER_MAP.find((story) => story.id === 2)
      // const amanChapter1 = aman.chapters.find((chapter) => chapter.id === 1)
      // const json = aman.jsonFile
      return {
        inkJson: AmanInk,
        characterId: 2,
        chapterId: 1,
      }
    }
    default: {
      return null
    }
  }
}

const getUi = ({ currentParagraphs, specialTags }) => {
  switch (specialTags.ui) {
    case 'scene': {
      return <Scene currentParagraphs={currentParagraphs} />
    }
    case 'whatsapp': {
      return <WhatsApp currentParagraphs={currentParagraphs} />
    }
    case 'narrator': {
      return <Narrator currentParagraphs={currentParagraphs} />
    }
    case 'survey': {
      // TODO: update this component
      return <Survey currentParagraphs={currentParagraphs} />
    }

    case 'mcq': {
      return <MultipleChoiceQuiz quizId={specialTags.game_id}/>
    }

    case 'swipe': {
      return <SwipeQuiz currentParagraphs={currentParagraphs} />
    }

    // case reflection  - return a reflection component with argument for survey id from ink
    // <Reflection getstory surveyid />

    case 'school': {
      return (
        // to remove school from nadia's story
        <Scene currentParagraphs={currentParagraphs} />
      )
    }
    default:
      return <DefaultInk currentParagraphs={currentParagraphs} />
  }
}

const InkController = () => {
  const { name } = useParams()
  const {
    // States
    paragraphs,
    specialTags,
    currentKnot,

    // Methods
    saveStory,
  } = useInkContext()

  
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

  // ==============================================================
  // Save data when a knot change is detected
  // ==============================================================
  const [knot, setKnot] = useState(null)

  useEffect(() => {
    if (currentKnot) setKnot(currentKnot)
    if (knot !== currentKnot) saveStory()

    // Run this useEffect whenever currentKnot gets updated
  }, [currentKnot])

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

  return (
    <Container maxWidth="lg" className="ink-controller">
      <Box>
        <Typography variant="overline" className="name">
          {name}
        </Typography>
      </Box>

      {getUi({
        currentParagraphs,
        specialTags,
      })}

      {/* Render event triggers */}
      <InkControls />
    </Container>
  )
}

export default InkController
