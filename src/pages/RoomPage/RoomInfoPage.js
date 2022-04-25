import React, { useState , useContext , useEffect} from 'react'
import {
  Box,
  Button,
  Typography,
  Container, Accordion, AccordionSummary, AccordionDetails 
} from '@material-ui/core'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import { useAuth } from '../../contexts/AuthContext'
import { RoomContext } from '../../contexts/RoomContext'
import { Link, useParams , useHistory } from 'react-router-dom'
import { getRoomDb } from '../../models/roomModel'
// import { firestore} from '../../firebase'
import { updateRoomParticipantsDb } from '../../models/roomModel'

import { useSnackbar } from '../../contexts/SnackbarContext'
import { updateUserRoomDb , updateDbUser , getDbUser} from '../../models/userModel'
import makeStyles from '@material-ui/core/styles/makeStyles'
import SVG from 'react-inlinesvg'
import HomeworkAvatarBox from './HomeworkAvatarBox'
import { CHARACTER_MAP, REFLECTION_ID_MAP } from '../../models/storyMap'


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



const RoomInfoPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [userFromDb, setUserFromDb] = useState(null)
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
  useEffect(() => {
    setIsLoading(true)    
    const getUser = async () => {
      const user = await getDbUser(currentUser.id)
      return setUserFromDb(user)
      }         
    getUser()
    setIsLoading(false)    
}, [currentUser.id])
  
  // console.log(roomUrl)

  
  useEffect(() => {
    setIsLoading(true)    
    const loadRoom = async () => {
      try {
        const room = setRoom(await getRoomDb(roomUrl))
        return room     
      }
      catch (err) { console.log(err) }
    }
    loadRoom()
    setIsLoading(false)    
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
    setIsLoading(true)          
    try {
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
  
  
  const reflectionIdsCharacter = room?.reflectionIds.map((reflectionId) => { 
    const { characterId, chapterId } = REFLECTION_ID_MAP[reflectionId]
    return { characterId, chapterId }
  })


  function groupBy(xs, f) {
    if(xs !== undefined) {
      return xs.reduce((r, v, i, a, k = f(v)) => ((r[k] || (r[k] = [])).push(v), r), {});        
    }
}     
  
  
   
  if (reflectionIdsCharacter !== undefined) {
    var results = groupBy(reflectionIdsCharacter, (c) => c.characterId);
    // console.log('results', results)
    
    var groupedResults = Object.keys(results).map(function (key) {
      return {
        characterId: key,
        chapters: results[key]
      };
    });
  }

  
    
  // console.log('cc', characterChapters)      


// console.log(room)
// 0. get roomCode from URL params X unable to call useParams from inside Provider
// 1. check if the roomCode exists 
// 2. Get the other info about the room (teacher, school, chapter etc)
// 3. store that into the context as an object  -> DONE
 

  return (
    
    // <Box className={classes.background}>
      
    //   <Box py={1} textAlign="center"  className={classes.overline}>
    //     <Typography variant="overline" > You are a participant in a facilitated room. </Typography>
    //   </Box>
      
      
    //      <Box py={1} textAlign="center"  >
    //         <Typography className={classes.headline} > Your Room Information</Typography>
    //       </Box>
        
    //   <Box className={classes.card}>
        
    //     {currentUser && room &&
    //        <Box py={3} textAlign="left"  >
    //       <Typography>Your game reflections will be visible to the facilitator</Typography>
    //       <Box py={2} >
    //         <Typography className={classes.details} paragraph={true}>Room Code: {room.code}</Typography>
    //         <Typography  className={classes.details} paragraph={true}>Organisation Name: {room.organisation}</Typography>
    //           <Typography  className={classes.details} paragraph={true}>Class Name: {room.name}</Typography>
    //           {/* <Typography  className={classes.details} paragraph={true}>Reflections: {room.reflectionIds}</Typography>
    //           <hr />
    //         <Typography  className={classes.details} paragraph={true}>Instructions: {room.instructions}</Typography> */}
    //       </Box>
    //     </Box>
    //     }

    //     {currentUser && !room &&
    //         <Box py={3} textAlign="left"  >
    //         <Typography >You have entered an invalid room code. Please check the URL again or scan the QR code that was sent to you.</Typography>
    //         <Button variant="contained" type="submit" className={classes.btn2} fullWidth style={{marginTop: 200}} disabled={isLoading} href="/room_join">Enter new room code</Button>
    //       </Box>
    //     }

    //     {currentUser && room &&
    //       <Box className={classes.bottom}>
    //         <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} onClick={() => saveRoomStartGame()}>Confirm & Play Game</Button>
    //         {/* <Button variant="outlined" type="submit"   disabled={isLoading} onClick={() => saveRoomStartGame()}>Player Guide</Button>    */}
    //         <Button variant="outlined" type="submit" className={classes.btn2} disabled={isLoading} onClick={() => exitActiveRoom()}>Leave Room</Button>
    //       </Box>
        
    //     }
        
    //     </Box>
    // </Box>

    <Box className={classes.background}>
       {isLoading && 
       <Box  m={4} textAlign="centre"  >
        Loading...
        </Box>
      }
    {room &&
      <>  
      <Box py={1} className={classes.overline}>
        
        <Link to="/" style={{ textDecoration: 'none' }}><span align="left" style={{display:'inline-block', marginLeft: 10, color:'white'}}><SVG src="/chapter_choices_page/arrow.svg" />                </span></Link>
          <span   style={{display:'inline-block',marginLeft:70}}><Typography variant="body1" style={{ fontWeight: '700'}} > Room: {room?.code} </Typography></span>
        
      </Box>
    
      <Accordion defaultExpanded>
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel1a-content"
          id="panel1a-header"
        >
          <Typography className={classes.title} >Room Details</Typography>
        </AccordionSummary>
        <AccordionDetails style={{display:'block'}}>
          
          <div>
            <Typography className={classes.title}  style={{display:'inline-block'}}>School / Organisation:</Typography>
            <Typography paragraph={true} className={classes.body}  style={{display:'inline-block',marginLeft:10}}> {room?.organisation}</Typography>
          </div>
          <div >
            <Typography className={classes.title} style={{display:'inline-block'}}>Class / Team:</Typography>
            <Typography paragraph={true} className={classes.body} style={{display:'inline-block',marginLeft:10}}> {room?.name}</Typography>    
            </div>
          
        </AccordionDetails>
      </Accordion>

      <Accordion defaultExpanded>
      <AccordionSummary
        expandIcon={<ExpandMoreIcon />}
        aria-controls="panel2a-content"
        id="panel2a-header"
      >
        <Typography  className={classes.title}>Facilitator's Message</Typography>
      </AccordionSummary>
      <AccordionDetails>
      <Typography paragraph={true} className={classes.body}> {room?.instructions}</Typography>           
      </AccordionDetails>
    </Accordion>
      
      
        {/* <hr style={{ border: 0, height: 2, width:'100%', marginTop:24, marginBottom: 24, backgroundColor: 'rgba(102,78,252,0.34)'}}/> */}
      
        <Box m={3}>
            <Typography className={classes.title}>Assigned characters:</Typography>
            <Typography paragraph={true} className={classes.body}>
            { groupedResults &&
              <HomeworkAvatarBox chaptersByCharacter={groupedResults} user={userFromDb}/>
            }
            </Typography>           
        </Box>  

      <Box className={classes.bottom}>
        {/* <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} href="/">Play Game</Button>          */}
        <Button variant="contained" type="submit" className={classes.btn} disabled={isLoading} onClick={() => saveRoomStartGame()}>Start Game</Button>         
        <Button variant="outlined" type="submit" className={classes.btn2} disabled={isLoading} onClick={() => exitActiveRoom()}>Leave Room</Button>         
        </Box>        
        
    </>
    }
    {!room && !isLoading &&
        <Box  m={4} textAlign="left"  >
          <Typography className={classes.title} >Room Code</Typography>
          <Typography >You have entered an invalid room code. Please check the URL again or scan the QR code that was sent to you.</Typography>
          <Button variant="contained" type="submit" className={classes.btn} fullWidth style={{marginTop: 150}} disabled={isLoading} href="/room_join">Enter new room code</Button>
        </Box>
      }

   

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
