import React, { useState, useEffect } from 'react';
import { Box, Button, CircularProgress , 
  Typography,
  Container,} from '@material-ui/core'
import { getDbReflectionResponses } from '../../../models/reflectionResponseModel';
import { REFLECTION_PAGE_FORM } from '../constants';
import ChapterResponse from './ChapterResponse';
 import makeStyles from '@material-ui/core/styles/makeStyles'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundColor: "white", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 
    overflow: "auto",
  },
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

  },
  headerText: {
    fontSize: '2rem',
    fontWeight: 800,
    color: '#ffffff',
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
    paddingTop: '10%',
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

  if (responses == null) {
    return <CircularProgress />;
  } else {
    return (
    <Box className={classes.background}>
     <Container className={classes.container}>
          <Typography className={classes.headerText}>Reflections from Others</Typography>
          <Typography variant="body2" color="error">{responses.length} players have completed this chapter</Typography>
      <Box>
        {responses.map(response => (
          response.answer && (
            <ChapterResponse key={response.id} response={response} />
            )
        ))}        
      </Box>
      
        </Container>
        <Button className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_FORM)} fullWidth>Continue</Button>
    </Box>
    )
    
  }
}

export default ChapterReflectionResponses;
