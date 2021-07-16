import React from 'react';
import { Box } from '@material-ui/core'

const ChapterResponse = ({ response }) => {
  return <Box m={2} p={2} bgcolor="#e5e5e5">
    <b>{response.answer} </b><br />
    <small>by a user who is around {response.user.age} years old/ {response.user.race} / {response.user.religion} / {response.user.gender} / {response.user.housing}</small>
  </Box>
};

export default ChapterResponse;