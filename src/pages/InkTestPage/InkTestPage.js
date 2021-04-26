import React from 'react'
import { Box, Button, Container, Divider, Typography } from '@material-ui/core'
import NavigateNextIcon from '@material-ui/icons/NavigateNext'
import useInkJs from '../../lib/Ink/useInkJs'
import json from '../../lib/Ink/nadid.ink.json'
import InkParagraphs from './InkParagraphs'
import InkChoices from './InkChoices'

const InkTestPage = () => {
  const {
    // State hooks
    storyStarted,
    paragraphs,
    choices,
    variables,
    saved,

    // Controller Hooks
    startStory,
    getStory,
    selectChoice,
    resetStory,
    startStoryFrom,
    saveStory,
    loadStory,
    clearLoad,
  } = useInkJs(json)

  console.log('variables: ', variables)

  return (
    <Container maxWidth="lg">
      <Box fontSize="h4.fontSize" my={2}>
        <Typography variant="inherit">Nadid</Typography>
      </Box>

      {/* Render texts with styling conditions based on tags */}
      <InkParagraphs paragraphs={paragraphs} variables={variables} />

      {/* Render choices with choice index for triggers */}
      <InkChoices choices={choices} selectChoice={selectChoice} />

      {/* Render event triggers */}
      <Box mt={5} mb={2}>
        <Typography variant="h6" align="center">
          Controls
        </Typography>
        <Divider />
      </Box>

      <Box my={2}>
        <Button
          endIcon={<NavigateNextIcon />}
          color="primary"
          onClick={() => {
            getStory()
            startStory()
          }}
        >
          Next
        </Button>
      </Box>

      <Box my={2}>
        {storyStarted && (
          <Button variant="text" color="primary" onClick={() => resetStory()}>
            Reset Story
          </Button>
        )}
      </Box>

      <Box my={2} hidden={storyStarted}>
        <Button color="primary" onClick={() => startStoryFrom('whatsapp')}>
          Start story from Whatsapp
        </Button>
      </Box>

      <Box my={2} hidden={!storyStarted}>
        <Button variant="contained" color="primary" onClick={() => saveStory()}>
          Save Story
        </Button>
      </Box>

      {!storyStarted && saved && (
        <Box my={2} display="flex">
          <Button
            variant="outlined"
            color="primary"
            onClick={() => loadStory(saved)}
          >
            Load Story
          </Button>

          <Box ml={2}>
            <Button
              variant="outlined"
              color="secondary"
              onClick={() => clearLoad()}
            >
              Clear Load States
            </Button>
          </Box>
        </Box>
      )}
    </Container>
  )
}

export default InkTestPage
