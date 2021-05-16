import React from 'react'
import { Box, Container, Typography } from '@material-ui/core'
import useInk from '../../lib/Ink/useInk'
import NadidInk from '../../stories/nadid.ink.json'
import InkParagraphs from '../../components/Ink/InkParagraphs'
import InkChoices from '../../components/Ink/InkChoices'
import InkControls from '../../components/Ink/InkControls'

const InkTestPageBasic = () => {
  const {
    // States
    isStoryStarted,
    paragraphs,
    choices,
    specialTags,

    // Methods
    getStory,
    setChoice,
    resetStory,
  } = useInk(NadidInk, 'nadid')

  return (
    <Container maxWidth="lg">
      <Box fontSize="h4.fontSize" my={2}>
        <Typography variant="inherit">Nadid</Typography>
      </Box>

      {/* Render texts with styling conditions based on tags */}
      <InkParagraphs paragraphs={paragraphs} specialTags={specialTags} />

      {/* Render choices with choice index for triggers */}
      <InkChoices choices={choices} setChoice={setChoice} />

      {/* Render event triggers */}
      <InkControls
        isStoryStarted={isStoryStarted}
        getStory={getStory}
        resetStory={resetStory}
      />
    </Container>
  )
}

export default InkTestPageBasic
