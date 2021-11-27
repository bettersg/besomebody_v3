import React from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'

import { useAuth } from '../../contexts/AuthContext'
import { useRoomContext } from '../../contexts/RoomContext'
import { Link, useParams, useHistory } from 'react-router-dom'
import makeStyles from '@material-ui/core/styles/makeStyles'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);


const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_launch.png')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

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
  overline: {
    backgroundColor: '#664EFC',
    color: '#ffffff',
    width: '100%',
  
  },
  link: {
    color: '#000A11',
    fontSize: '0.9rem',
    fontWeight: '700',
    textDecoration: 'none',
    '&:hover': {
      color: '#664EFC'
    },
  }
}))

const ParticipantStartPage = () => {
  // const [isLoading, setIsLoading] = useState(false)
  const classes = useStyles()  
  const history = useHistory()



  // const { currentUser } = useAuth()
  const [room, setRoom]  = useRoomContext()
  
  
  const { roomId } = useParams()

  setRoom(roomId)
  

  return (
    <Box className={classes.background}>
      <Box py={1} textAlign="center"  className={classes.overline}>
        <Typography variant="overline" > You are a participant in a facilitated room. </Typography>
      </Box>
      
      <Container maxWidth="md" className={classes.container}>
        <Box py={1} textAlign="center">
          <Typography className='LandingPage__text'>Experience life in Singapore as someone else.</Typography>  
        </Box>
        
        <Box className={classes.bottom}>
          <Button variant="contained" className={classes.btn} onClick={() => history.push('/intro')}>Create a new account</Button>
          <br />
          <Link to="/login" className={classes.link}> Login to existing account</Link>
        </Box>        
      </Container>
      
    </Box>
  )
}

export default ParticipantStartPage;
