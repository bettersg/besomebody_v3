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
import makeStyles from '@material-ui/core/styles/makeStyles'
import HomeworkAvatarBox from './HomeworkAvatarBox'
import {CHARACTER_MAP,REFLECTION_ID_MAP} from '../../models/storyMap'
import { LocalDrinkSharp } from '@material-ui/icons'

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

  


    return (
      <Box className={classes.background}>
        <Box py={1} textAlign="center"  className={classes.overline}>
          <Typography variant="body2" > You are in a facilitated room: {room?.code} </Typography>
         </Box>
      
          <Box m={3}>
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
          <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} href="/">Play Game</Button>         
                 
        </Box>        
      </Box>
  
    
    )
    
    
}

export default RoomDetailsPage;