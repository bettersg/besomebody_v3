import React from 'react';
import { Box } from '@material-ui/core'

const ChapterResponse = ({ response }) => {
  return <Box m={2} p={2} bgcolor="#e5e5e5">
    {response.answer} by {response.user.email}
  </Box>
};

export default ChapterResponse;