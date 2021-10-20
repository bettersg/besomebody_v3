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
    backgroundColor: "#3DCAD3", 
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
    marginBottom: 16,
    margin: "0 48px", 
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
    paddingTop: "100px", 
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
    color: '#000A11',
    fontSize: '0.9rem',
    fontWeight: '400',
    textDecoration: 'none',
    marginBottom: 30,
    margin: "0 40px", 
    fontSize: "16px", 
  }, 
  outcomeIcons: {
    display: "flex", 
    justifyContent: "space-evenly", 
    width: "100%", 
    marginBottom: "34px", 
    padding: "0 48px", 
  }
}))

const OutcomeUnlockedStep = ({ next }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)

  return (
  <div className={classes.background}>
    <Container className={classes.container}>
        <Box py={4} display="flex" flexDirection="column" justifyContent="center" alignItems="center">
          <div className={classes.outcomeIcons}> 
            <img
              src={'/reflection/icon_outcomeunlocked.png'}            
              alt={'Outcome Unlocked'}            
            />
            <img
              src={'/reflection/icon_outcomelocked.png'}            
              alt={'Outcome Unlocked'}            
            />
            <img
              src={'/reflection/icon_outcomelocked.png'}            
              alt={'Outcome Unlocked'}            
            /> 
          </div>

          <Typography className={classes.headerText}>Outcome Unlocked!</Typography>
          <Typography className={classes.text}>You’ve unlocked one of the outcomes for chapter 3. <br/><br/>To unlock more outcomes, you may need to replay the previous chapters.</Typography>
      </Box>
        <Box className={classes.bottom}>        
          {/* <Button variant="contained" className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}> */}
          <Button variant="contained" className={classes.btn} onClick={() => next()}>

          Next
        </Button>
      </Box>
    </Container>
  </div>
  )
}

export default OutcomeUnlockedStep;



 
        
          
           
