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
    const { reflection} = props
    const classes = useStyles();  
    // console.log(characterId)
//   const reflectionId = parseInt(reflection);
//   const { characterId, reflectionId } = REFLECTION_ID_MAP[reflectionId];
    const persona = CHARACTER_MAP.find((character) => character.characterId === parseInt(reflection.characterId)); 
    // console.log('characterId',characterId)
    // console.log('char',reflection.characterId)
    // console.log('persona', persona)
    
    

    
    
                                  
        return (
         
         <Box className={classes.avatarWrapper}>                  
            <Box className={classes.avatar}>
                <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />                     
            </Box>
            <Box style={{width:'80px', padding: 4}}>
            <Typography style={{fontWeight: '700'}}> {persona.name}  </Typography>
            </Box>
            <Box className={classes.homeworkText}>
              {reflection.chapterIds.map((reflectionId,i) => {
                
                return (
                  <Box>                        
                        Chapter  {reflectionId}  <span style={{paddingLeft:18, fontWeight: '700', color:'#664EFC'}}>To do</span>
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


