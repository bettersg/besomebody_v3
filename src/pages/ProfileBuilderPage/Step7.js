import React, { useState , useEffect} from "react";
import {
  Box,
  Button,
  FormLabel,
  FormControlLabel,
  RadioGroup,
  Radio,
  TextField,
  Typography,
  Container,
  Fade,
} from '@material-ui/core'
import { useAuth } from '../../contexts/AuthContext'
import { updateDbUser } from '../../models/userModel'
import { Link , useHistory } from 'react-router-dom'
import { useSnackbar } from '../../contexts/SnackbarContext'
import './style.scss'

import { RoomContext } from '../../contexts/RoomContext'
// import { updateRoomParticipantsDb } from '../../models/roomModel'
import { getRoomDb } from '../../models/roomModel'



function Step7(props) {
  const history = useHistory()
  const { setSnackbar } = useSnackbar()

  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)

  const { roomValue, roomCodeValue } = React.useContext(RoomContext);
  const [room, setRoom] = roomValue;
  const [roomCode, setroomCode] = roomCodeValue;

  
  // setroomCode('abc123')
  // let roomCode = room
  // console.log('roomCode' , roomCode)
  // console.log('room' , room)
  
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
  }, [])
  

  // console.log(room)
  // console.log(roomCode)

  const formData = {
    age: props.state.age?props.state.age:null,
    gender: props.state.gender? props.state.gender.toUpperCase():null,
    race: props.state.race? props.state.race.toUpperCase():null,
    religion: props.state.religion?props.state.religion.toUpperCase():null,
    housing: props.state.housing?props.state.housing.toUpperCase():null,
    username: props.state.username ? props.state.username : null,
    timestamp: Date.now(),
    // room: [room],
    }
    // console.log(room.id)

  const handleSubmit = async (e) => {
      e.preventDefault()
       
      // console.log(formData);        
      
      try {
        setIsLoading(true)          
        await updateDbUser(formData, currentUser.id)
        if (room) {         
          history.push('/room/'+room.roomCode) 
        }
        else {
          history.push('/')  // redirect to root which will be the characterchoice page now.
        }
       
      } catch (err) {
        setSnackbar({
          message: `There was an error: ${err.message}`,
          open: true,
          type: 'error',
        })
      }
      setIsLoading(false)      

  };

  return(
    <>
       <Box className={`PBWhatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
              <Typography key={props.order}> Ok, so here's what I've got for your details. If you missed a field or want to change something, you can rebuild your profile. If you're ready, let's start!</Typography> <br/>
                  <form onSubmit={handleSubmit}>
                   
                  
                  <div>Age (rounded down): {props.state.age?props.state.age:"You left this blank"}</div>
                  <div>Gender: {props.state.gender?props.state.gender.toUpperCase():"You left this blank"}</div>
                  <div>Ethnicity: {props.state.race?props.state.race.toUpperCase():"You left this blank"}</div>
                  <div>Religion: {props.state.religion?props.state.religion.toUpperCase():"You left this blank"}</div>
                  <div>Housing Type: {props.state.housing?props.state.housing.toUpperCase():"You left this blank"}</div>
                  <div>Username: {props.state.username?props.state.username:"You left this blank"}</div>   
                {room &&
                  <Box>
                      <div>You are a participant in room.</div>
                    </Box>
                  }
                  
                <br />
                <Button
                    onClick={() => props.jump(1)}
                    variant="outlined"                                        
                  // className="submitBtn"
                  style={{
                    padding: '10px 10px',
                    borderRadius: '40px',
                    marginBottom: '20px',
                    marginLeft: 'auto',
                    marginRight: 'auto',
                    textDecoration: 'none',                   
                  }}>Rebuild your profile</Button>

                <Button
                    type="submit"
                    variant="contained"
                    color="primary"
                    disabled={isLoading}
                  // className="submitBtn"
                  style={{
                    padding: '10px 10px',
                    borderRadius: '40px',
                    marginBottom: '20px',
                    marginLeft: 'auto',
                    marginRight: 'auto',
                    background: '#664EFC',
                    backgroundColor: '#664EFC',
                    textDecoration: 'none',
                    color: '#ffffff',
                    fontWeight: '700',
                    '&:hover': {
                      backgroundColor: '#6C70DD',      
                      boxShadow: 'none',
                      
                    },
                  }}
                  >
                    Submit - then start the game!
                </Button>
                  </form>
                </Box>
              </Box>
              
            </Fade>
           
      </Box>
    </>
  );
}
  
export default Step7;
