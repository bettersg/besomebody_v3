import React, { useState , useContext } from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'

import { useAuth } from '../../contexts/AuthContext'
import { useRoomContext, RoomProvider } from '../../contexts/RoomContext'
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
  const value  = useRoomContext()
  // const room  = useContext(RoomContext)
  
  console.log(value[0].roomId)
  
  return (
    <Box>
      <RoomProvider>
      <section>
        <Container maxWidth="md">
          <Box py={8} textAlign="center">
            <Typography variant="h4" gutterBottom={true}>Participant Page</Typography>
            <Typography variant="body2">Your game results will be visible to the facilitator: </Typography>
            <Typography  color="textSecondary" paragraph={true}>Room Code: {value[0].roomId}</Typography>
            <Typography  color="textSecondary" paragraph={true}>School Name: {value[0].schoolName}</Typography>
            <Typography  color="textSecondary" paragraph={true}>Class Name: {value[0].className}</Typography>
            <Typography  color="textSecondary" variant="body2">Instructions: {value[0].instructions}</Typography>
            <Box mt={4}>
              <Link to="/signup"><Button variant="contained" color="primary" >Sign Up to Play Game</Button></Link>
              
            </Box>
          </Box>
        </Container>
      </section>
      </RoomProvider>
    </Box>
  )
}

export default RoomLaunchPage;
