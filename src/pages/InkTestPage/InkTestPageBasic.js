import React from 'react'
import { Box, Container, Typography } from '@material-ui/core'
import useInk from '../../lib/Ink/useInk'
import NadidInk from './nadid.ink.json'
import InkParagraphs from '../../components/Ink/InkParagraphs'
import InkChoices from '../../components/Ink/InkChoices'
import InkControls from '../../components/Ink/InkControls'

const InkTestPageBasic = () => {
  const {
    // State hooks
    isStoryStarted,
    paragraphs,
    choices,
    variables,

    // Controller Hooks
    setParagraphs,
    setIsStoryStarted,
    getStory,
    setChoice,
    resetStory,
  } = useInk(NadidInk)

  return (
    <Container maxWidth="lg">
      <Box fontSize="h4.fontSize" my={2}>
        <Typography variant="inherit">Nadid</Typography>
      </Box>

      {/* Render texts with styling conditions based on tags */}
      <InkParagraphs
        paragraphs={paragraphs}
        variables={variables}
        setParagraphs={setParagraphs}
      />

      {/* Render choices with choice index for triggers */}
      <InkChoices choices={choices} setChoice={setChoice} />

      {/* Render event triggers */}
      <InkControls
        isStoryStarted={isStoryStarted}
        setIsStoryStarted={setIsStoryStarted}
        getStory={getStory}
        resetStory={resetStory}
      />
    </Container>
  )
}

export default InkTestPageBasic
