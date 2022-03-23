import React , { useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import { useAuth } from '../../../contexts/AuthContext'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/shareable_avatars/bg_presharestep.jpg')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0,
    maxHeight: '100%',

  },
  headerText: {
    fontSize: '2rem',
    fontWeight: 800,
    color: '#ffffff',
    marginTop: 200,
  },
  bottom: {
    bottom: 0,
    height: '150px',
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
    paddingTop:200,
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
  text: {
    color: '#ffffff',
    fontSize: '18px',
    textDecoration: 'none',
    // marginTop: 279,
    marginBottom: 30,
    width: '318px',
    textAlign: 'center',
  },
  nextButton: {
    position: "absolute", 
    bottom: 20, 
    opacity: 0.6,  
    left: "47%", 
    height: "8px", 
    '&:hover': {
      cursor: 'pointer',
    },
  },
  fullPage: {
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    display: "flex", 
    justifyContent: "center", 
    alignItems: "center",
  },
}))

const PreShareStep = ({ next }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)

  return (
  <Box className={classes.background} onClick={() => next()} >
    <div className={classes.fullPage}>
      <Typography className={classes.text}>The story for Nadia might be over, but the conversation does not - only if you share your experience with others. Be part of our community.</Typography>
        <img src="/reflection/next_icon.png" className={`${classes.nextButton}`}/>
    </div>
  </Box>
  )
}

export default PreShareStep;



 
        
          
           