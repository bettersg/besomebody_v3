import React from 'react';
import { Box, Button } from '@material-ui/core'

import { REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from '../constants';

// hijack onclick to also trigger a call to await updateDbUser(character+endingGlobalVariables, currentUser.id) so that the number of endings is associated with the player not the story saves.
// need to initialise all the possible endings as null first so that firestore captures it then populate it with a switch statement?


const ChapterComplete = ({ setPage }) => {
  

  return (
  <Box display="flex" flexDirection="column" justifyContent="center" alignItems="center">
    Chapter complete!
    <Button variant="contained" color="primary" onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}>
      Continue
    </Button>
  </Box>
  )
}

export default ChapterComplete;