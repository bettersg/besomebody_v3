import React, { useState, useEffect } from 'react';
import { Box, Button, CircularProgress } from '@material-ui/core'

import { getDbReflectionResponses } from '../../../models/reflectionResponseModel';
import { REFLECTION_PAGE_FORM } from '../constants';
import ChapterResponse from './ChapterResponse';

const ChapterReflectionResponses = ({ reflectionId, setPage }) => {
  const [responses, setResponses] = useState(null);

  useEffect(() => {
    getDbReflectionResponses({
      reflectionId,
      questionId: 3,
    }).then(setResponses).catch(console.error);
  }, [reflectionId, setResponses]);

  console.log(responses);

  if (responses == null) {
    return <CircularProgress />;
  } else {
    return <>
      <Box display="flex" flexDirection="column" justifyContent="center" alignItems="center">
        {responses.map(response => (
          <ChapterResponse key={response.id} response={response} />
        ))}
      </Box>
      <Button variant="contained" onClick={() => setPage(REFLECTION_PAGE_FORM)}>Add your own response</Button>
    </>;
  }
}

export default ChapterReflectionResponses;