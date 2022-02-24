import React, { useState } from 'react'
import {  updateDbUser } from '../../models/userModel'
import { useAuth } from '../../contexts/AuthContext'
import {  useHistory } from 'react-router-dom'
import { useSnackbar } from '../../contexts/SnackbarContext'
import {
    Box,
    Button,
    Typography,
    Container,
  } from '@material-ui/core'

const RoomExitPage = () => {
    const [isLoading, setIsLoading] = useState(false)
    const { currentUser } = useAuth()
    const history = useHistory()
    const { setSnackbar } = useSnackbar()


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

      return (
        <Box>
          <Box py={1} textAlign="center"  >
            <Typography variant="overline" > ROOM INFO AND EXIT PAGE </Typography>
          </Box>
        
              
            <Box >
              <Button variant="contained" type="submit"  disabled={isLoading} onClick={() => exitActiveRoom()}>Leave Room</Button>         
            </Box>        
        </Box>
    
      
      )
    
    
}

export default RoomExitPage;