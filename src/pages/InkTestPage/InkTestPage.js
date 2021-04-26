import React from 'react'
import { Box, Button, Container, Divider, Typography } from '@material-ui/core'
import NavigateNextIcon from '@material-ui/icons/NavigateNext'
import UseInkJs from '../../inky/UseInkJs'
import InkParagraphs from './InkParagraphs'
import InkChoices from './InkChoices'

const InkTestPage = () => {
  const {
    // State hooks
    isStoryStarted,
    setIsStoryStarted,
    paragraphs,
    choices,
    variables,
    saved,

    // Controller Hooks
    handleGetStory,
    handleSelectChoice,
    handleResetStory,
    handleStartStoryFrom,
    handleSaveStory,
    handleLoadStoryFromState,
    handleClearLoadStates,
  } = UseInkJs()

  console.log('variables: ', variables)

  return (
    <Container maxWidth="lg">
      <Box fontSize="h4.fontSize" my={2}>
        <Typography variant="inherit">Nadid</Typography>
      </Box>

      {/* Render texts with styling conditions based on tags */}
      <InkParagraphs paragraphs={paragraphs} variables={variables} />

      {/* Render choices with choice index for triggers */}
      <InkChoices choices={choices} handleSelectChoice={handleSelectChoice} />

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
            handleGetStory()
            setIsStoryStarted(true)
          }}
        >
          Next
        </Button>
      </Box>

      <Box my={2}>
        {isStoryStarted && (
          <Button
            variant="text"
            color="primary"
            onClick={() => handleResetStory()}
          >
            Reset Story
          </Button>
        )}
      </Box>

      <Box my={2} hidden={isStoryStarted}>
        <Button
          color="primary"
          onClick={() => handleStartStoryFrom('whatsapp')}
        >
          Start story from Whatsapp
        </Button>
      </Box>

      <Box my={2} hidden={!isStoryStarted}>
        <Button
          variant="contained"
          color="primary"
          onClick={() => handleSaveStory()}
        >
          Save Story
        </Button>
      </Box>

      {!isStoryStarted && saved && (
        <Box my={2} display="flex">
          <Button
            variant="outlined"
            color="primary"
            onClick={() => handleLoadStoryFromState(saved)}
          >
            Load Story
          </Button>

          <Box ml={2}>
            <Button
              variant="outlined"
              color="secondary"
              onClick={() => handleClearLoadStates()}
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
