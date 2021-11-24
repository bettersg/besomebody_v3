import React, { useState , useContext , useEffect} from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'

import { useAuth } from '../../contexts/AuthContext'
import { RoomContext, useRoomContext } from '../../contexts/RoomContext'
import { Link, useParams } from 'react-router-dom'
import { getRoomDb } from '../../models/roomModel'
// import { firestore} from '../../firebase'


const RoomLaunchPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [isDialogOpen, setIsDialogOpen] = useState(false)
  const [snackbar, setSnackbar] = useState({
    message: '',
    open: false,
    type: 'error',
  })

  // const { currentUser } = useAuth()
  const [room, setRoom]  = useRoomContext()
  // const room  = useContext(RoomContext)
  
  
  const { roomId } = useParams()


  const asyncRoom = async () => {
    const room = await getRoomDb(roomId)
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
  
  console.log('Room: ',room)
  console.log('RoomId params: ',roomId)

  

// 0. get roomID from URL params X unable to call useParams from inside Provider
// 1. check if the roomId exists 
// 2. Get the other info about the room (teacher, school, chapter etc)
// 3. store that into the context as an object  -> DONE
 

  return (
    <Box>
      <section>
        <Container maxWidth="md">
          {room &&
            <Box py={8} textAlign="center">
            <Typography variant="h4" gutterBottom={true}>Participant Page</Typography>
            <Typography variant="body2">Your game results will be visible to the facilitator: </Typography>            
            <Box>
              <Typography  color="textSecondary" paragraph={true}>Room Code: {room.roomId}</Typography>
              <Typography  color="textSecondary" paragraph={true}>Organisation Name: {room.schoolName}</Typography>
              <Typography  color="textSecondary" paragraph={true}>Class Name: {room.className}</Typography>
              <Typography  color="textSecondary" variant="body2">Instructions: {room.instructions}</Typography>
            </Box>
            
            <Box mt={4}>
              <Link to="/intro"><Button variant="contained" color="primary" >Start game as participant</Button></Link>
              
            </Box>
          </Box>
          }
          {!room &&
            <Box py={8} textAlign="center">
              <Typography variant="body2">
              The URL you provided does not match an active room. Please check the URL or return home.
              </Typography>  
            <Box mt={4}>
            <Link to="/intro"><Button variant="contained" color="primary" >Start New Game</Button></Link>            
            </Box>
          </Box>
          }
        </Container>
      </section>      
    </Box>
  )
}

export default RoomLaunchPage;
