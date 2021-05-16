import React from 'react'
import { useParams } from 'react-router-dom'
import { Box, Container, Typography } from '@material-ui/core'
import NadidInk from '../../stories/nadid.ink.json'
import DavidInk from '../../stories/david.ink.json'
import useInk from '../../lib/Ink/useInk'
import NotFoundPage from '../../components/NotFoundPage'
import WhatsApp from '../WhatsApp'
import School from '../School'
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

const getUi = ({ paragraphs, choices, specialTags, setChoice }) => {
  switch (specialTags.ui) {
    case 'school': {
      return (
        <School
          paragraphs={paragraphs}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
        />
      )
    }
    case 'whatsapp': {
      return (
        <WhatsApp
          paragraphs={paragraphs}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
        />
      )
    }
    default:
      return (
        <DefaultInk
          paragraphs={paragraphs}
          choices={choices}
          setChoice={setChoice}
          specialTags={specialTags}
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

  if (!inkJson) {
    return <NotFoundPage />
  }

  return (
    <Container maxWidth="lg">
       
      
      <Box>
        <Typography variant="overline" >{name}</Typography>
      </Box>
       

      {getUi({ paragraphs, choices, specialTags, setChoice })}

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
