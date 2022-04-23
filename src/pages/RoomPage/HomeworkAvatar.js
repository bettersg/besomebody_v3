import React , {useEffect, useState} from "react";
import {
  makeStyles
} from "@material-ui/core/styles";
import { Box, Avatar, Button , Typography }
    from "@material-ui/core";
import { CHARACTER_MAP, REFLECTION_ID_MAP } from '../../models/storyMap'
import { getDbReflectionResponseByRoomCode } from '../../models/reflectionResponseModel'

const useStyles = makeStyles((theme) => ({
  large: {
        width: 56,
    height: 56,
    
    marginRight: '16px',
    
  },
  avatar: {
    width: '70px',
    padding: '8px 0px',
  },
  homeworkText: {
    width: '150px',
    padding: '8px 0px',
    // display: 'flex',
    // flexDirection: 'column',
    // justifyContent: 'center',
    // alignItems: 'flex-start',
  },
  avatarWrapper: {
    width: '100%',
    display: 'flex',   
    flexDirection: 'row',
    justifyContent: 'flex-end',
    alignItems: 'center'
  }
}));



export default function HomeworkAvatar(props) {
  const { characters , user } = props
  const classes = useStyles();  
  const [completed, setCompleted ] = useState(false)
  const [reflectionState, setReflectionState] = useState(false)
  const persona = CHARACTER_MAP.find((character) => character.characterId === parseInt(characters.characterId))

  // const persona = CHARACTER_MAP.find((characterId) => characterId === parseInt(characters.characterId)); 
 const roomCode = user.activeRoom
   

    

                                  
    return (
      
      <Box className={classes.avatarWrapper}>                  
        <Box className={classes.avatar}>
            <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />                     
        </Box>
        <Box style={{width:'80px', padding: 4}}>
        <Typography style={{fontWeight: '700'}}> {persona.name}  </Typography>
        </Box>
        <Box className={classes.homeworkText}>              
          {characters.chapters.map((chapter, i) => {    

            return (

                <HomeworkDone chapterNum={chapter.chapterId} reflectionId={chapter.reflectionId} user={user}/>

            )
          })              
          }

          </Box>
  
      </Box>
    )
    
}


export  function HomeworkDone(props) {
  const { chapterNum, reflectionId , user} = props
  const [completed, setCompleted] = useState(false)

  const checkIfCompleted = async (roomCode, reflectionId, userId) => {
    const response = await getDbReflectionResponseByRoomCode(roomCode, reflectionId, userId);
    console.log(response)  // this evaluates correctly
    return (response.length >=1);
  };

  useEffect(() => {
    checkIfCompleted(user.activeRoom, reflectionId, user.id).then(result => {
      setCompleted(result)
    })
  },[reflectionId])

  return (
    <Box>
      Chapter {chapterNum} 
      {completed?  <span style={{ float:'right', fontWeight: '700', color: '#8dc000' }}>Done</span> :  <span style={{float:'right', fontWeight: '400', color: '#664EFC' }}>To do</span>}
    </Box>
  )

}