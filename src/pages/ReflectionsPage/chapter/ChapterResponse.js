import React from 'react';
import { Box } from '@material-ui/core'

const ChapterResponse = ({ response }) => {
  return <Box m={4}>
    {response.answer}
  </Box>
};

export default ChapterResponse;