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
    const { characters , user , reflectionIdsByCharacter} = props
  const classes = useStyles();  
  const [completed, setCompleted ] = useState(false)
  const [reflectionState, setReflectionState ] = useState(false)
    const persona = CHARACTER_MAP.find((character) => character.characterId === parseInt(characters.characterId)); 
 
  
  
  // // first check the chapter id and character id using the reflection id
  // const checkIfCompleted = (characterId, chapterNum) => {
  //   const currentChapterInUserDb = user.achievements.find(
  //     (achievement) =>
  //       achievement.character === parseInt(characterId) &&
  //       achievement.chapter === chapterNum
  //   )
  //   // console.log(currentChapterInUserDb)
  //   return currentChapterInUserDb ? true : false
  //   }
  

// parameters for getDbReflectionResponseByRoomCode :  roomCode, reflectionId, getOnlyReflections   
  const checkIfCompleted =  async (roomCode, reflectionId) => {
    const getReflectionsbyRoom =  getDbReflectionResponseByRoomCode(roomCode, reflectionId, true).then(
      (response) => {
        // console.log(response.length >=1)  // this evaluates correctly
        return (response.length >= 1)        
      }        
    )          
    const completed = await getReflectionsbyRoom
    console.log(completed)
    return completed
    // setCompleted(getReflectionsbyRoom);
  }

  // const checkIfCompleted = async (roomCode, reflectionId) => {
  //   const response = await getDbReflectionResponseByRoomCode(roomCode, reflectionId, true);
  //   // console.log(response.length >=1)  // this evaluates correctly
  //   return (response.length >=1);
  // };
    

                                  
    return (
      
      <Box className={classes.avatarWrapper}>                  
        <Box className={classes.avatar}>
            <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />                     
        </Box>
        <Box style={{width:'80px', padding: 4}}>
        <Typography style={{fontWeight: '700'}}> {persona.name}  </Typography>
        </Box>
        <Box className={classes.homeworkText}>              
          {characters.chapterIds.map((chapter,i) => {
            
            return (
              <Box>                        
                Chapter  {chapter}                    
                
                </Box>
            )
          })              
          }
                      
          {characters.reflectionIds.map((reflection, i) => {
            return (
              <>     
                {checkIfCompleted(user.activeRoom, reflection)}  
               {/* {checkIfCompleted(user.activeRoom, reflection) ? <span style={{ float: 'right', fontWeight: '700', color: '#8dc000' }}>Done</span> : <span style={{ float: 'right', fontWeight: '400', color: '#664EFC' }}>To do</span>} */}
              </>
            )
            
          })}

          </Box>
  
      </Box>
    )
    
    
    // return (      
    //   <div>          
    //       {/* {persona.name}
    //         <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />
    //       Chapter {reflectionId} */} 
    //         {characterId} -  {reflectionId}

            
    //   </div>
   
    //   );
}


