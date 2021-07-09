import React from 'react'
import { Box } from '@material-ui/core'
import SwipeableTemporaryDrawer from './SiderComponent/SiderComponent'
import NextButton from '../../components/NextButton'
import './styles.scss'
import { useInkContext } from '../../contexts/InkContext'

const InkControls = () => {
  const {
    isStoryStarted,
    hasSavedState,

    getStory,
    resetStory,
    startStoryFrom,
    saveStory,
    loadSavedStory,
    resetSavedStory,
    globalVariables,
  } = useInkContext()

  /* 
  // Call the savestory function when there is a boolean flag in the ink story called saveStory
  if (globalVariables.saveStory) {
    saveStory()
  }
  */

  return (
    <div className="story">
      {getStory && (
        <Box width="100%">
          <div className="game-menu">
            <SwipeableTemporaryDrawer globalVariables={ globalVariables } />
          </div>
          {/* <NextButton getStory={getStory}/> */}
        </Box>
      )}
    </div>
  )
}

export default InkControls

{
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
*/
}
