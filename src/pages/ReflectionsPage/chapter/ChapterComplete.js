import React from 'react';
import { Box, Button, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

import { REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from '../constants';
const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundColor: "white", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: '100vh',
    },
    bottom: 0, 
  },
}))

const ChapterComplete = ({ setPage }) => {
  const classes = useStyles() 

  return <Box display="flex" flexDirection="column" justifyContent="center" alignItems="center" className={classes.paragraphWrapper} >
    <Typography>Chapter complete!</Typography> 
    <br/>
    <Button variant="contained" color="primary" onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}>
      Continue
    </Button>
  </Box>;
}

export default ChapterComplete;