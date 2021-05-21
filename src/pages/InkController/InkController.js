/* eslint-disable react-hooks/exhaustive-deps */
import React from 'react'
import { useParams } from 'react-router-dom'
import { Box, Container, Typography } from '@material-ui/core'
import NadidInk from '../../stories/nadid.ink.json'
import DavidInk from '../../stories/david.ink.json'
import useInk from '../../lib/Ink/useInk'
import NotFoundPage from '../../components/NotFoundPage'
import WhatsApp from '../WhatsappPage/Whatsapp'
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

const getUi = ({
  paragraphs,
  choices,
  specialTags,
  globalVariables,
  setChoice,
}) => {
  switch (specialTags.ui) {
    case 'school': {
      return (
        <School
          paragraphs={paragraphs}
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
          paragraphs={paragraphs}
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
          paragraphs={paragraphs}
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
    <Container maxWidth="lg">
      <Box>
        <Typography variant="overline">{name}</Typography>
      </Box>
      <div className="ui-screens">
        {getUi({ paragraphs, choices, specialTags, globalVariables, setChoice })}
      </div>

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
