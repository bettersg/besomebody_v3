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
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
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
    fontSize: '0.9rem',
    fontWeight: '400',
    textDecoration: 'none',
    marginBottom: 30,
  }
}))

const PreShareStep = ({ next }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)

  return (
  <Box className={classes.background}>
    <Container maxWidth="md" className={classes.container}>
        <Box py={4} display="flex" flexDirection="column" justifyContent="center" alignItems="center">          
          <Typography className={classes.text}>This character's chapter might be over... but the conversation doesn't have to end here, if you want to join our private communith to discuss the reflections and share your own views.</Typography>
      </Box>
        <Box className={classes.bottom}>        
          {/* <Button variant="contained" className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}> */}
          <Button variant="contained" className={classes.btn} onClick={() => next()}>

          Next
        </Button>
      </Box>
    </Container>
  </Box>
  )
}

export default PreShareStep;



 
        
          
           
