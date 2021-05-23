import React from 'react'
import { Box, Button, Divider, Typography } from '@material-ui/core'
import NavigateNextIcon from '@material-ui/icons/NavigateNext'
import "./styles.scss"

const InkControls = (props) => {
  const {
    isStoryStarted,
    hasSavedState,

    getStory,
    resetStory,
    startStoryFrom,
    saveStory,
    loadSavedStory,
    resetSavedStory,
  } = props

  /* 
  // Call the savestory function when there is a boolean flag in the ink story called saveStory
  if (globalVariables.saveStory) {
    saveStory()
  }
  */
  
  return (
    <div className="story">
      {/* <Box mt={5} mb={2}>
        
        <Divider />
      </Box> */}

      {getStory && (
        <Box width="100%">
          <Button
            className="next-button"
            endIcon={<NavigateNextIcon />}
            color="primary"
            fullWidth
            onClick={() => {
              getStory()
            }}
          >
            Next
          </Button>
        </Box>
      )}


    </>
  )
}

export default InkControls

/* 

// I removed and commented these out as our story is unlikely to present these functions directly to the user. They should be triggered by events at the back-end, rather than presented on the front-end.
      {isStoryStarted && resetStory && (
        <Box my={2}>
          <Button variant="text" color="primary" onClick={() => resetStory()} className="reset-button">
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
            className="save-button"
            variant="contained"
            color="primary"
            onClick={() => saveStory()}
          >
            Save Story
          </Button>
        </Box>
      )}

      {!isStoryStarted && hasSavedState && (
        <Box my={2} display="flex">
          <Button
            variant="outlined"
            color="primary"
            onClick={() => loadSavedStory()}
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
    </div>
  )
}

export default InkControls
