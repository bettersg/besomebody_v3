import React, { useState , useContext , useEffect} from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'

import { useAuth } from '../../contexts/AuthContext'
import { RoomContext } from '../../contexts/RoomContext'
import { Link, useParams , useHistory } from 'react-router-dom'
import { getRoomDb } from '../../models/roomModel'
// import { firestore} from '../../firebase'
import { updateRoomParticipantsDb } from '../../models/roomModel'
import { useSnackbar } from '../../contexts/SnackbarContext'
import { updateUserRoomDb } from '../../models/userModel'
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
    bottom: 20,
    // height: '20vh',
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
  whiteBox: {
    backgroundColor: '#ffffff',
    color: '#000000',
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


const RoomInfoPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const classes = useStyles()  
  const history = useHistory()
  const { currentUser } = useAuth()
  const { setSnackbar } = useSnackbar()

 
  const { roomValue, roomCodeValue } = React.useContext(RoomContext);
  const [room, setRoom] = roomValue;
  const [roomCode, setroomCode] = roomCodeValue;
  
  const { roomUrl } = useParams()
  if (roomCode == null) {
    setroomCode(roomUrl)
  }


  const asyncRoom = async () => {
    const room = await getRoomDb(roomCode)
    return room
  }
  
  useEffect(() => {
    const loadRoom = async () => {
      try {
        const room = await asyncRoom()
        setRoom(room)        
      }
      catch (err) { console.log(err) }
    }
    loadRoom()
  }, [roomCode])
  
  // console.log('Room.id ',room.id)
  // console.log('roomCode params: ',roomCode)
  // console.log('UserId: ',currentUser.id)

  
  const saveRoomStartGame = async () => {
    // e.preventDefault()
      
    // console.log(formData);        
    
    try {
      setIsLoading(true)          
      await updateRoomParticipantsDb(room.id, currentUser.id)  
      await updateUserRoomDb(currentUser.id, room.id)  
      console.log('Room Updated', room.id)
      history.push('/')  // redirect to root which will be the characterchoice page now.     
    } catch (err) {
      setSnackbar({
        message: `There was an error: ${err.message}`,
        open: true,
        type: 'error',
      })
    }
    setIsLoading(false)      

  };
  


// 0. get roomCode from URL params X unable to call useParams from inside Provider
// 1. check if the roomCode exists 
// 2. Get the other info about the room (teacher, school, chapter etc)
// 3. store that into the context as an object  -> DONE
 

  return (
    <Box className={classes.background}>
      <Box py={1} textAlign="center"  className={classes.overline}>
        <Typography variant="overline" > You are a participant in a facilitated room. </Typography>
      </Box>
      
      <Container maxWidth="md" className={classes.container}>
        <Box py={1} textAlign="center">
          <Typography variant="h4" gutterBottom={true}>Room Information Page</Typography>  
        </Box>
        
        {currentUser && room &&
        <Box py={3} textAlign="center" className={classes.whiteBox}>
          <Typography>Your game reflections will be visible to the facilitator</Typography>
          <Box py={3} px={5}>
            <Typography paragraph={true}>Room Code: {room.roomCode}</Typography>
            <Typography paragraph={true}>Organisation Name: {room.organisation}</Typography>
            <Typography paragraph={true}>Class Name: {room.name}</Typography>
            <Typography paragraph={true}>Instructions: {room.instructions}</Typography>
          </Box>
        </Box>
        }

      </Container>          
        <Box className={classes.bottom}>
          <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} onClick={() => saveRoomStartGame()}>Start Game</Button>         
        </Box>        
    </Box>

  
  )
}

export default RoomInfoPage;


{/* // <Box>
    //   <section>
    //     <Container maxWidth="md">
    //       {room &&
    //         
            
    //         <Box mt={4}>
    //           <Link to="/intro"><Button variant="contained" color="primary" >Start game as participant</Button></Link>
              
    //         </Box>
    //       </Box>
    //       }
    //       {!room &&
    //         <Box py={8} textAlign="center">
    //           <Typography variant="body2">
    //           The URL you provided does not match an active room. Please check the URL or return home.
    //           </Typography>  
    //         <Box mt={4}>
    //         {/* <Link to="/intro"><Button variant="contained" color="primary" >Start New Game</Button></Link>             */}
    //         </Box>
    //       </Box>
    //       }
    //     </Container>
    //   </section>      
    // </Box> */}