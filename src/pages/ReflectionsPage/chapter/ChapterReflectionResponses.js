import React, { useState, useEffect } from 'react';
import { Box, Button, CircularProgress } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

import { getDbReflectionResponses } from '../../../models/reflectionResponseModel';
import { REFLECTION_PAGE_FORM } from '../constants';
import ChapterResponse from './ChapterResponse';
const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundColor: "white", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: '100vh',
    },
    bottom: 0, 
    overflow: "auto",
  },
}))
const ChapterReflectionResponses = ({ reflectionId, setPage }) => {
  const [responses, setResponses] = useState(null);

  useEffect(() => {
    getDbReflectionResponses({
      reflectionId,
      questionId: 3,
    }).then(setResponses).catch(console.error);
  }, [reflectionId, setResponses]);
  const classes = useStyles() 

  if (responses == null) {
    return <CircularProgress />;
  } else {
    return <>
      <Box  className={classes.paragraphWrapper} flexDirection="column" justifyContent="center" alignItems="center">
        {responses.map(response => (
          <ChapterResponse key={response.id} response={response} />
        ))}
        <Button variant="contained" onClick={() => setPage(REFLECTION_PAGE_FORM)}>Add your own response</Button>
      </Box>
    </>;
  }
}

export default ChapterReflectionResponses;