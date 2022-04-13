import React, { useState, useEffect } from 'react'
import {  updateDbUser , getDbUser , updateUserRoomDb } from '../../models/userModel'
import { useAuth } from '../../contexts/AuthContext'
import { updateRoomParticipantsDb , getRoomDb } from '../../models/roomModel'
import {CHARACTER_MAP,REFLECTION_ID_MAP} from '../../models/storyMap'
import SVG from 'react-inlinesvg'

import {  useHistory, Link } from 'react-router-dom'
import { useSnackbar } from '../../contexts/SnackbarContext'
import {
    Box,
    Button,
    Typography,
    Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import HomeworkAvatarBox from './HomeworkAvatarBox'


// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);


const useStyles = makeStyles((theme) => ({
  background: {
    // backgroundImage: ({ image }) => `url('/images/whatsapp.png')`,
    // backgroundSize: 'cover',
    // backgroundPosition: 'center',
    backgroundColor: 'white',
    height: '660px',
    overflow: 'auto',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

  },
  bottom: {
    // bottom: 20,
    // height: '20vh',
    // position: 'absolute',
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
  },
  title: {
    fontSize: '1rem',
    fontWeight: '700',
  },
  body: {
    fontSize: '0.9rem',
    fontWeight: '400',
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
  btn2: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    border: '2px solid',
    borderColor:'#664EFC',
    textDecoration: 'none',
    color: '#664EFC',
    fontWeight: '700',
    '&:hover': {      
      boxShadow: 'none',
      
    },
  }

}))  


const RoomDetailsPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [userFromDb, setUserFromDb] = useState(null)
  const [room, setRoom] = useState(null)
  // const [characterChapters, setCharacterChapters] = useState(null)
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
  
  useEffect(() => {
      const getRoom = async () => {
        const room = await getRoomDb(userFromDb?.activeRoom)
        return setRoom(room)
        }         
    getRoom()    
    }, [userFromDb?.activeRoom])
  
  const reflectionIdsCharacter = room?.reflectionIds.map((reflectionId) => { 
    const { characterId, chapterId } = REFLECTION_ID_MAP[reflectionId]
    return { characterId, chapterId }
  })


  function groupBy(xs, f) {
    if(xs !== undefined) {
      return xs.reduce((r, v, i, a, k = f(v)) => ((r[k] || (r[k] = [])).push(v), r), {});        
    }
}     
  
  
  if (reflectionIdsCharacter !== undefined ) {
    var results = groupBy(reflectionIdsCharacter, (c) => c.characterId);    
    // console.log('results', results)
    
    var result2 = Object.entries(results).map(([key, value]) => ({
      characterId: key,
      chapterIds: value.map((v) => v.chapterId)
    }))
    // setCharacterChapters(result2)  // error only happens if this line is added. if i comment this line out, the error disappears but CharacterChapters is null
       
  }
  // console.log('cc', characterChapters)      

  
  const saveRoomStartGame = async () => {
    
    try {
      setIsLoading(true)          
      await updateRoomParticipantsDb(room.id, currentUser.id)  
      await updateUserRoomDb(currentUser.id, room.id)  
      await updateDbUser({ activeRoom: room.code }, currentUser.id)   
      console.log('Room Updated', room.code)
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
      <Box className={classes.background}>
        <Box py={1} className={classes.overline}>
          
          <Link to="/" style={{ textDecoration: 'none' }}><span align="left" style={{display:'inline-block', marginLeft: 10, color:'white'}}><SVG src="/chapter_choices_page/arrow.svg" />                </span></Link>
            <span   style={{display:'inline-block',marginLeft:50}}><Typography variant="body1" style={{ fontWeight: '700'}} > Room Details: {room?.code} </Typography></span>
          
         </Box>
      
          <Box m={3}>
          <div>
            <div>
              <Typography className={classes.title}  style={{display:'inline-block'}}>School / Organisation:</Typography>
              <Typography paragraph={true} className={classes.body}  style={{display:'inline-block',marginLeft:10}}> {room?.organisation}</Typography>
            </div>
            <div >
              <Typography className={classes.title} style={{display:'inline-block'}}>Class / Team:</Typography>
              <Typography paragraph={true} className={classes.body} style={{display:'inline-block',marginLeft:10}}> {room?.name}</Typography>    
            </div>
          </div>
          
            <Typography className={classes.title}>Facilitator's Message:</Typography>
            <Typography paragraph={true} className={classes.body}> {room?.instructions}</Typography>           
        </Box>        
          <hr style={{ border: 0, height: 2, width:'100%', marginTop:24, marginBottom: 24, backgroundColor: 'rgba(102,78,252,0.34)'}}/>
        
          <Box m={3}>
            <Typography className={classes.title}>Assigned characters:</Typography>
            <Typography paragraph={true} className={classes.body}>
            { result2 &&
              <HomeworkAvatarBox result2={result2} />
            }
            </Typography>           
        </Box>  

        <Box className={classes.bottom}>
          {/* <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} href="/">Play Game</Button>          */}
          <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} onClick={() => saveRoomStartGame()}>Start Game</Button>         
          <Button variant="outlined" type="submit" className={classes.btn2} disabled={isLoading} onClick={() => exitActiveRoom()}>Leave Room</Button>         
        </Box>        
      </Box>
  
    
    )
    
    
}

export default RoomDetailsPage;