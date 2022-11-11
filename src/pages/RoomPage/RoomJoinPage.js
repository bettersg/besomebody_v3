import React, { useState, useContext, useEffect } from 'react'
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
    TextField
} from '@material-ui/core'
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
    height: '100px',
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
    marginTop: '20px',
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
  headline: {    
    color: '#ffffff',
    width: '100%',
    padding: '15px',
    fontSize: '24px',
    fontWeight: '700',
    textAlign: 'center',
    marginTop: 20,
    textShadow: '0px 4px 14px rgba(0, 91, 105, 0.2)',
  },
  link: {
    color: '#000A11',
    fontSize: '0.9rem',
    fontWeight: '700',
    textDecoration: 'none',
    '&:hover': {
      color: '#664EFC'
    },
  },
  line: {
    width: '80px',
    border: '2px solid rgba(25,163,173,0.3)' ,
    display: 'inline-block',    
  }
}))

const RoomJoinPage = () => {
    const [isLoading, setIsLoading] = useState(false)
    const [isError, setIsError] = useState(false)
    const [userFromDb, setUserFromDb] = useState(null)
    const [room, setRoom] =  useState(null)
    const { currentUser } = useAuth()
    const history = useHistory()
    const { setSnackbar } = useSnackbar()
    const classes = useStyles()  

    useEffect(() => {
        const getUser = async () => {
          const user = await getDbUser(currentUser.id)
          return setUserFromDb(user)
          }         
      getUser()
    }, [currentUser.id])
    
    // useEffect(() => {
    //     const getRoom = async () => {
    //       const room = await getRoomDb(userFromDb?.activeRoom)
    //       return setRoom(room)
    //       }
    //   getRoom()
    //   }, [userFromDb?.activeRoom])
     

    const setActiveRoom = async () => {        
        try {
          setIsLoading(true)          
        //   await updateRoomParticipantsDb(room.id, currentUser.id)  
        //   await updateUserRoomDb(currentUser.id, room.id)  
               
            if (await getRoomDb(room) != null) {
                await updateDbUser({ activeRoom: room }, currentUser.id)               
                console.log('Room Joined', room)
                history.push('/room/'+room)  // redirect to root which will be the characterchoice page now.     
            }
            else {
                console.log('No such room')
                setIsError(true)
                setSnackbar({
                    message: `There is no such room: ${room}. Please check the code again.`,
                    open: true,
                    type: 'error',
                  })
            }            
            
        } catch (err) {
          setSnackbar({
            message: `There was an error: ${err.message}`,
            open: true,
            type: 'error',
          })
        }
      setIsLoading(false)  
      // setIsError(false)
    
    };
    
    const handleOnChange = event => {      
        event.preventDefault();
        // console.log(event.target.value);
        setRoom(event.target.value);
        console.log(room)
      };

      return (
        <Box className={classes.background}>
    
          <Box py={1} textAlign="center"  >
            <Typography className={classes.headline} > Join Facilitated Room </Typography>
          </Box>
        
          <Box className={classes.card}>
            <Box py={2} textAlign="center">
              <img
                src="/room/email_link.png"
                alt="Use Email Link"
                className="image-email-link"
              />
              <img
                src="/room/qr_scan.png"
                alt="QR Scan"
                className="image-scan"
              />
            <Typography>Click the link or scan the QR code sent to you by the facilitator</Typography>
            </Box>
            
            <Box className={classes.centered} py={2}>
              <hr className={classes.line} />
              <Typography variant="overline" style={{fontWeight:'700', margin: '0px 20px' , fontSize: '16px'}}> OR </Typography>
              <hr className={classes.line} />

            </Box>
          
              <Box className={classes.centered}>
              <TextField
                variant="outlined"                
                fullWidth
                error={isError}                
                  type="text"
                  placeholder="Enter Code (abc123)"
                      name="roomCode"     
                      id="roomCode"
                      onBlur={handleOnChange}    
                />
                  <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} onClick={() => setActiveRoom()}>Join Room</Button>         
            </Box>   
            
            <Box className={classes.bottom}>
              <Typography style={{fontSize: '12px'}}> ToBeYou.sg offers <a href="https://facilitator.tobeyou.sg" target="_blank">a <b>free</b> facilitation tool</a> for schools and organisations to use. <a href="mailto:tobeyou@better.sg">Contact us</a> for enquires. </Typography>
             </Box>
          </Box>

         
          
        </Box>
    
      
      )
    
    
}

export default RoomJoinPage;