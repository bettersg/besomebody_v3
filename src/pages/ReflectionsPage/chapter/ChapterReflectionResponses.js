import React, { useState, useEffect } from 'react';
import { Box, Button, CircularProgress , 
  Typography,
  Container,} from '@material-ui/core'
import { getDbReflectionResponses } from '../../../models/reflectionResponseModel';
import { REFLECTION_PAGE_FORM } from '../constants';
import ChapterResponse from './ChapterResponse';
 import makeStyles from '@material-ui/core/styles/makeStyles'

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
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '100vh',
    [theme.breakpoints.up('xs')]: {
      height: '660px',
    },
    bottom: 0, 

  },
  headerText: {
    fontSize: '2rem',
    fontWeight: 800,
    color: '#ffffff',
    marginTop: 200,
  },
  bottom: {
    bottom: 0,
    height: '20vh',
    position: 'absolute',
    marginLeft: 'auto',
    marginRight: 'auto',
    left: 0,
    right:0,
    textAlign: 'center',
    // display: 'flex',    
    // flexDirection: 'column',
    // alignItems: 'center',
  },
  container: {
    margin: 'auto',
    textAlign: 'center',    
    alignItems: "center",
    paddingTop: '25%',
    overflow: 'scroll',
    height: 600
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#664EFC',
    backgroundColor: '#664EFC',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  topText: {
    color: '#A7A9EB',
    fontSize: '0.9rem',
    fontWeight: '600',    
    marginBottom: 30,
  },
  mainText: {
    color: '#ffffff',
    fontSize: '1.1rem',
    fontWeight: '400',    
    marginBottom: 30,
  },
  link: {
    color: '#ffffff',
    fontSize: '0.8rem',
    fontWeight: '300',    
    marginBottom: 30,
    textTransform: "uppercase",
    textDecoration: 'none',
  },
}))



const ChapterReflectionResponses = ({ reflectionId, setPage }) => {
  const [responses, setResponses] = useState(null);
  const classes = useStyles()

  useEffect(() => {
    getDbReflectionResponses({
      reflectionId,
      questionId: 3,  // this is hardcoded to the "share your story textarea question"
    }).then(setResponses).catch(console.error);
  }, [reflectionId, setResponses]);
  const classes = useStyles() 

  if (responses == null) {
    return <CircularProgress />;
  } else {
    return (
    <Box className={classes.background}>
     <Container maxWidth="md" className={classes.container}>
      <Box>
        {responses.map(response => (
          <ChapterResponse key={response.id} response={response} />
        ))}
        <Button variant="contained" onClick={() => setPage(REFLECTION_PAGE_FORM)}>Add your own response</Button>
      </Box>
      
        </Container>
        <Button className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_FORM)}>Add your response</Button>
    </Box>
    )
    
  }
}

export default ChapterReflectionResponses;