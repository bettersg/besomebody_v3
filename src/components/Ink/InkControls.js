import React from 'react'
import { Box, Button, Divider, Typography } from '@material-ui/core'
import NavigateNextIcon from '@material-ui/icons/NavigateNext'

const InkControls = (props) => {
  const {
    isStoryStarted,
    savedTexts,

    setIsStoryStarted,
    getStory,
    resetStory,
    startStoryFrom,
    saveStory,
    loadSavedStory,
    resetSavedStory,
  } = props

  return (
    <>
      <Box mt={5} mb={2}>
        <Typography variant="h6" align="center">
          Controls
        </Typography>
        <Divider />
      </Box>

      {getStory && setIsStoryStarted && (
        <Box my={2}>
          <Button
            endIcon={<NavigateNextIcon />}
            color="primary"
            onClick={() => {
              getStory()
              setIsStoryStarted(true)
            }}
          >
            Next
          </Button>
        </Box>
      )}

      {isStoryStarted && resetStory && (
        <Box my={2}>
          <Button variant="text" color="primary" onClick={() => resetStory()}>
            Reset Story
          </Button>
        </Box>
      )}

      {!isStoryStarted && startStoryFrom && (
        <Box my={2}>
          <Button color="primary" onClick={() => startStoryFrom('whatsapp')}>
            Start story from Whatsapp
          </Button>
        </Box>
      )}

      {isStoryStarted && saveStory && (
        <Box my={2}>
          <Button
            variant="contained"
            color="primary"
            onClick={() => saveStory()}
          >
            Save Story
          </Button>
        </Box>
      )}

      {!isStoryStarted && savedTexts && (
        <Box my={2} display="flex">
          <Button
            variant="outlined"
            color="primary"
            onClick={() => loadSavedStory(savedTexts)}
          >
            Load Story
          </Button>

          <Box ml={2}>
            <Button
              variant="outlined"
              color="secondary"
              onClick={() => resetSavedStory()}
            >
              Clear Load States
            </Button>
          </Box>
        </Box>
      )}
    </>
  )
}

export default InkControls
