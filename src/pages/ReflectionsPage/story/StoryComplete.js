import React from 'react';
import { Box, Button } from '@material-ui/core'

import { REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from '../constants';

const StoryComplete = ({ setPage }) => {
  return <Box display="flex" flexDirection="column" justifyContent="center" alignItems="center">
    Chapter complete!
    <Button variant="contained" color="primary" onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}>
      Continue
    </Button>
  </Box>;
}

export default StoryComplete;