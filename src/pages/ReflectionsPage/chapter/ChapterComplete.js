import React , { useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import { useAuth } from '../../../contexts/AuthContext'
import { useParams, useHistory } from 'react-router-dom'

import { REFLECTION_PAGE_LEARNING } from '../constants';
import { CHARACTER_MAP } from "../../../models/storyMap"

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundColor: "#664EFC",
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

  },
  headerText: {
    fontSize: '40px',
    fontWeight: 900,
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
  },
  container: {
    margin: 'auto',
    textAlign: 'center',
  },
  btn: {
    padding: '10px 50px',
    width: '252px', 
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#664EFC',
    backgroundColor: '#172153',
    textDecoration: 'none',
    color: '#ffffff',
    textTransform: "capitalize", 
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#172153',      
      boxShadow: 'none',
      
    },
  },
  text: {
    color: '#ffffff',
    fontSize: '0.9rem',
    fontWeight: '400',
    textDecoration: 'none',
    marginBottom: 30,
  }
}))

const ChapterComplete = ({ setPage , user }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()  
  const { name , chapter } = useParams();
  const persona = CHARACTER_MAP.find((character) => character.linkName === name); 
  const [isLoading, setIsLoading] = useState(false)

  return (
  <Box className={classes.background}>
    <Container maxWidth="md" className={classes.container}>
        <Box py={4} display="flex" flexDirection="column" justifyContent="center" alignItems="center">
          <Typography className={classes.headerText}>Chapter {chapter} Complete</Typography>
          {/* <Typography className={classes.text}>Congratulations! <br /> You've finished the chapter.</Typography> */}
      </Box>
        <Box className={classes.bottom}>        
          {/* <Button variant="contained" className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}> */}
          <Button variant="contained" className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_LEARNING)}>

          Next
        </Button>
      </Box>
    </Container>
  </Box>
  )
}

export default ChapterComplete;



 
        
          
           
