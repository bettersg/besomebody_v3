import React , { useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import { useAuth } from '../../../contexts/AuthContext'

import { REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES } from '../constants';

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  background: {
    // backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundColor: "#26248F",
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
    alignItems: "center",
    paddingTop:'15%',
  },
  btnFindout: {
    width: "252px", 
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#172153',
    backgroundColor: '#172153',
    textDecoration: 'none',
    color: 'white',
    textTransform: "capitalize", 
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  btn: {
    width: "252px", 
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#F0F1FC',
    backgroundColor: '#F0F1FC',
    textDecoration: 'none',
    color: '#172153',
    textTransform: "capitalize", 
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#E2E2F8',      
      boxShadow: 'none',
      
    },
  },
  topText: {
    color: '#D8F4F6',
    fontSize: '0.9rem',
    fontWeight: '600',    
    marginBottom: 30,
  },
  mainText: {
    fontSize: '1.0rem',
    fontWeight: '400',    
    margin: "20px",
    color: '#D8F4F6',

  },
  link: {
    color: '#ffffff',
    fontSize: '0.8rem',
    fontWeight: '300',    
    marginBottom: 30,
    textTransform: "uppercase",
    textDecoration: 'none',
  },
  videoImage: {
    width: '100%'
  }
}))

const ChapterLearning = ({ setPage , reflection }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)
  // console.log(reflection)
  return (
  <Box className={classes.background}>
    <Container maxWidth="md" className={classes.container}>
        <Box className={classes.container}>
          <Typography className={classes.topText}>DID YOU KNOW?</Typography>
          <Typography className={classes.mainText}>{reflection.didyouknow}</Typography>
          {reflection.media ?
            reflection.mediatype === "video" ?
              <a href={reflection.media} target="_blank" className={classes.link}><img src={reflection.mediaimage} className={classes.videoImage}/></a> :
              <a href={reflection.media} target="_blank" className={classes.link}><Button variant="contained" className={classes.findOutBtn} >Find Out More</Button></a>
            : null
          }
      </Box>
        <Box className={classes.bottom}>   
       
          <Button variant="contained" className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_CHAPTER_REFLECTION_RESPONSES)}>
          Continue
        </Button>
      </Box>
    </Container>
  </Box>
  )
}

export default ChapterLearning;



 
        
          
           