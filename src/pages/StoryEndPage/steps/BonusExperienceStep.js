import React , { useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import { useAuth } from '../../../contexts/AuthContext'
import {  useHistory } from 'react-router-dom'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  background: {
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
    marginTop: "139px", 
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#172153',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    width: "252px", 
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
  }, 
  mainMenuButton: {
    fontWeight: 700, 
    color: "white", 
    '&:hover': {
      cursor:"pointer", 
      
    },
  }
}))

const BonusExperienceStep = ({ next }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)
  const history = useHistory()

  return (
  <Box className={classes.background}>
    <Container maxWidth="md" className={classes.container}>
        <img src="/reflection/bonus_unlocked.png" />
        <Box py={4} display="flex" flexDirection="column" justifyContent="center" alignItems="center">          
          <Typography className={classes.headerText}>Bonus Experience Unlocked!</Typography>
          
      </Box>
        <Box className={classes.bottom}>        
          {/* <Button variant="contained" className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}> */}
          <Button variant="contained" className={classes.btn} onClick={() => next()}>

          Start
        </Button>
       <Typography className={classes.mainMenuButton} onClick={() => history.push('/characterchoice' )}> Back to Character Menu</Typography>
        {/* link back to main menu */}
      </Box>
    </Container>
  </Box>
  )
}

export default BonusExperienceStep;



 
        
          
           
