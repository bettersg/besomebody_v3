import React from "react";
import {
  makeStyles
} from "@material-ui/core/styles";
import { Box, Avatar, Button , Typography }
    from "@material-ui/core";
import { CHARACTER_MAP , REFLECTION_ID_MAP} from '../../models/storyMap'

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
    const { reflection , user} = props
    const classes = useStyles();  
    // console.log(characterId)
//   const reflectionId = parseInt(reflection);
//   const { characterId, reflectionId } = REFLECTION_ID_MAP[reflectionId];
    const persona = CHARACTER_MAP.find((character) => character.characterId === parseInt(reflection.characterId)); 
    // console.log('characterId',characterId)
    // console.log('char',reflection.characterId)
    // console.log('props', props)
    
  // function to check if the assigned chapter has been completed already (is the chapterId in the user achievements)
  // const checkIfCompleted = (chapterId) => {
  //   const completed = userFromDb?.achievements?.find((achievement) => achievement.chapterId === chapterId)
  //   return completed
  // }
  
  
  // // first check the chapter id and character id using the reflection id
  const checkIfCompleted = (characterId, chapterNum) => {
    console.log(characterId, chapterNum)         
    // console.log(user.achievements.find())
    // console.log(user.achievements.find((achievement) => achievement.chapter === chapterNum && achievement.character === parseInt(characterId)) )
    const currentChapterInUserDb = user.achievements.find(
      (achievement) =>
        achievement.character === parseInt(characterId) &&
        achievement.chapter === chapterNum
    )
    // console.log(currentChapterInUserDb)
    return currentChapterInUserDb ? true : false 
    }

    
    
                                  
        return (
         
         <Box className={classes.avatarWrapper}>                  
            <Box className={classes.avatar}>
                <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />                     
            </Box>
            <Box style={{width:'80px', padding: 4}}>
            <Typography style={{fontWeight: '700'}}> {persona.name}  </Typography>
            </Box>
            <Box className={classes.homeworkText}>              
              {reflection.chapterIds.map((chapter,i) => {
               
                return (
                  <Box>                        
                    Chapter  {chapter}
                    {checkIfCompleted(reflection.characterId, chapter) ? <span style={{ float:'right', fontWeight: '700', color: '#8dc000' }}>Done</span> :  <span style={{float:'right', fontWeight: '400', color: '#664EFC' }}>To do</span>}
                    {/* {user.achievements.find((achievement) => achievement.chapter === parseInt(chapter) && achievement.character === parseInt(reflection.characterId)) ? <span style={{ paddingLeft: 18, fontWeight: '700', color: '#00cc00' }}>Done</span> :  <span style={{ paddingLeft: 18, fontWeight: '700', color: '#664EFC' }}>To do</span>} */}
                    </Box>
                )
              })              
                }
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


