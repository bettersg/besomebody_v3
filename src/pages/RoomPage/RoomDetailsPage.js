import React, { useState, useEffect } from 'react'
import {  updateDbUser , getDbUser } from '../../models/userModel'
import { useAuth } from '../../contexts/AuthContext'
import { getRoomDb } from '../../models/roomModel'

import {  useHistory } from 'react-router-dom'
import { useSnackbar } from '../../contexts/SnackbarContext'
import {
    Box,
    Button,
    Typography,
    Container,
} from '@material-ui/core'
  


const RoomDetailsPage = () => {
    const [isLoading, setIsLoading] = useState(false)
    const [userFromDb, setUserFromDb] = useState(null)
    const [room, setRoom] =  useState(null)
    const { currentUser } = useAuth()
    const history = useHistory()
    const { setSnackbar } = useSnackbar()

    useEffect(() => {
        const getUser = async () => {
          const user = await getDbUser(currentUser.id)
          return setUserFromDb(user)
          }         
      getUser()
    }, [currentUser.id])
    
    useEffect(() => {
        const getRoom = async () => {
          const room = await getRoomDb(userFromDb?.activeRoom)
          return setRoom(room)
          }         
      getRoom()
      }, [userFromDb?.activeRoom])

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
        
          <Typography paragraph={true}>Instructions: {room?.instructions}</Typography>
            <Box >
              <Button variant="contained" type="submit"  disabled={isLoading} onClick={() => exitActiveRoom()}>Leave Room</Button>         
            </Box>        
        </Box>
    
      
      )
    
    
}

export default RoomDetailsPage;