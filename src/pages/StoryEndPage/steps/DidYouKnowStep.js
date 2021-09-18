import React , { useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
// import { useAuth } from '../../../contexts/AuthContext'

import { REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from '../../ReflectionsPage/constants';

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
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
    paddingTop:'25%',
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

const DidYouKnowStep = ({ reflection , next}) => {
  const classes = useStyles()

  // const { currentUser } = useAuth()  
  // const [isLoading, setIsLoading] = useState(false)
  console.log(next)
  return (
  <Box className={classes.background}>
    <Container maxWidth="md" className={classes.container}>
        <Box className={classes.container}>
          <Typography className={classes.topText}>DID YOU KNOW?</Typography>
          <Typography className={classes.mainText}>{reflection.didyouknow}</Typography>
          {reflection.media ? <a href={reflection.media} target="_blank" className={classes.link}>FIND OUT MORE</a> : null}
      </Box>
        <Box className={classes.bottom}>        
          <Button variant="contained" className={classes.btn} onClick={() => next()}>
          Continue
        </Button>
      </Box>
    </Container>
  </Box>
  )
}

export default DidYouKnowStep;



 
        
          
           