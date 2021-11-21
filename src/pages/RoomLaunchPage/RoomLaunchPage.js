import React, { useState , useContext } from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'

import { useAuth } from '../../contexts/AuthContext'
import { useRoomContext } from '../../contexts/RoomContext'
import { Link } from 'react-router-dom'

const RoomLaunchPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [isDialogOpen, setIsDialogOpen] = useState(false)
  const [snackbar, setSnackbar] = useState({
    message: '',
    open: false,
    type: 'error',
  })
  // const { roomId } = useParams()
  // const { currentUser } = useAuth()
  const [room, setRoom]  = useRoomContext()
  // const room  = useContext(RoomContext)
  
  console.log(room)
  
  return (
    <Box>
      <section>
        <Container maxWidth="md">
          <Box py={8} textAlign="center">
            <Typography variant="h4" gutterBottom={true}>Participant Page</Typography>
            <Typography variant="body2">Your game results will be visible to the facilitator: </Typography>
            <Typography  color="textSecondary" paragraph={true}>Room Code: {room.roomId}</Typography>
            <Typography  color="textSecondary" paragraph={true}>School Name: {room.schoolName}</Typography>
            <Typography  color="textSecondary" paragraph={true}>Class Name: {room.className}</Typography>
            <Typography  color="textSecondary" variant="body2">Instructions: {room.instructions}</Typography>
            <Box mt={4}>
              <Link to="/signup"><Button variant="contained" color="primary" >Sign Up to Play Game</Button></Link>
              
            </Box>
          </Box>
        </Container>
      </section>      
    </Box>
  )
}

export default RoomLaunchPage;
