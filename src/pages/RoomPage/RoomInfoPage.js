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
import { updateUserRoomDb , updateDbUser } from '../../models/userModel'
import makeStyles from '@material-ui/core/styles/makeStyles'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);


const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/commons/bg_pattern.png')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

  },
  card: {
    position: 'absolute',
    top: 100,
    // left: 20,
    left: 'calc(50% - 160px)',
    padding: '20px 20px',
    boxSizing: 'border-box',
    borderRadius: 15,
    backgroundColor: '#ffffff',
    width: 320,
    height: 520,
    boxShadow: '0px 4px 14px rgba(0, 91, 105, 0.2)',
  },
  centered: {
    alignItems: 'center',
    textAlign: 'center',
  },
  bottom: {
    bottom: 0,
    height: '140px',
    position: 'absolute',
    background: '#CBF1F4',
    borderRadius: '0px 0px 15px 15px',
    padding: 20,
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
    // marginTop: '20px',
    background: '#664EFC',
    // backgroundColor: '#664EFC',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',      
    },
  },
  btn2: {
    padding: '5px 30px',
    marginTop: 10,
    borderRadius: '40px',
    // marginTop: '20px',
    // background: '#664EFC',
    // backgroundColor: '#664EFC',
    textDecoration: 'none',
    // color: '#ffffff',
    fontWeight: '700',
    '&:hover': {
      // backgroundColor: '#6C70DD',      
      boxShadow: 'none',      
    },
  },
  headline: {    
    color: '#ffffff',
    width: '100%',
    // padding: '15px',
    fontSize: '24px',
    fontWeight: '700',
    textAlign: 'center',
    // marginTop: 20,
    textShadow: '0px 4px 14px rgba(0, 91, 105, 0.2)',
  }, 
  line: {
    width: '80px',
    border: '2px solid rgba(25,163,173,0.3)' ,
    display: 'inline-block',    
  },  
  overline: {
    backgroundColor: '#664EFC',
    color: '#ffffff',
    width: '100%',  
  },
  details: {
    fontWeight: '400',
    fontSize: '0.8rem',
    lineHeight: '1.1rem',
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

 
  const { roomValue } = React.useContext(RoomContext);
  const [room, setRoom] = roomValue;
  // const [roomCode, setroomCode] = roomCodeValue;
  
  
  const { roomUrl } = useParams()
  // if (roomCode == null) {    
  //   setroomCode(roomUrl)            
  // }
  
  // console.log(roomUrl)

  
  useEffect(() => {
    const loadRoom = async () => {
      try {
        const room = setRoom(await getRoomDb(roomUrl))
        return room     
      }
      catch (err) { console.log(err) }
    }
    loadRoom()
  }, [roomUrl])
  
  // console.log('Room.id ',room)
  // console.log('roomCode params: ',roomCode)
  // console.log('UserId: ',currentUser.id)

  // TODO: is this page suitable to be the room details page with the teacher instructions and homework? Check that the saves make sense.


  const saveRoomStartGame = async () => {
    // e.preventDefault()
      
    // console.log(formData);        
    
    try {
      setIsLoading(true)          
      await updateRoomParticipantsDb(room.id, currentUser.id)  
      await updateUserRoomDb(currentUser.id, room.id)  
      await updateDbUser({ activeRoom: roomUrl }, currentUser.id)   
      console.log('Room Updated', roomUrl)
      history.push('/room_explainer')  // redirect to root which will be the characterchoice page now.     
    } catch (err) {
      setSnackbar({
        message: `There was an error: ${err.message}`,
        open: true,
        type: 'error',
      })
    }
    setIsLoading(false)      

  };


  const exitActiveRoom = async () => {        
    try {
      setIsLoading(true)          
    //   await updateRoomParticipantsDb(room.id, currentUser.id)  
    //   await updateUserRoomDb(currentUser.id, room.id)  
      await updateDbUser({ activeRoom: null }, currentUser.id)   
      console.log('Room Exited')
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
  

// console.log(room)
// 0. get roomCode from URL params X unable to call useParams from inside Provider
// 1. check if the roomCode exists 
// 2. Get the other info about the room (teacher, school, chapter etc)
// 3. store that into the context as an object  -> DONE
 

  return (
    <Box className={classes.background}>
      
      <Box py={1} textAlign="center"  className={classes.overline}>
        <Typography variant="overline" > You are a participant in a facilitated room. </Typography>
      </Box>
      
      
         <Box py={1} textAlign="center"  >
            <Typography className={classes.headline} > Your Room Information</Typography>
          </Box>
        
      <Box className={classes.card}>
        
        {currentUser && room &&
        <Box py={3} textAlign="left"  >
          <Typography>Your game reflections will be visible to the facilitator</Typography>
          <Box py={2} >
            <Typography className={classes.details} paragraph={true}>Room Code: {room.code}</Typography>
            <Typography  className={classes.details} paragraph={true}>Organisation Name: {room.organisation}</Typography>
              <Typography  className={classes.details} paragraph={true}>Class Name: {room.name}</Typography>
              <Typography  className={classes.details} paragraph={true}>Reflections: {room.reflectionIds}</Typography>
              <hr />
            <Typography  className={classes.details} paragraph={true}>Instructions: {room.instructions}</Typography>
          </Box>
        </Box>
        }

        
        <Box className={classes.bottom}>
          <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} onClick={() => saveRoomStartGame()}>Confirm & Play Game</Button>   
          {/* <Button variant="outlined" type="submit"   disabled={isLoading} onClick={() => saveRoomStartGame()}>Player Guide</Button>    */}
          <Button variant="outlined" type="submit"   className={classes.btn2} disabled={isLoading} onClick={() => exitActiveRoom()}>Leave Room</Button>         
        </Box>     
        
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