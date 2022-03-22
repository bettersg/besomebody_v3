import React from "react";
import {
  makeStyles
} from "@material-ui/core/styles";
import { Box, Avatar, Button , Typography }
    from "@material-ui/core";
import { CHARACTER_MAP , REFLECTION_ID_MAP} from '../../models/storyMap'

const useStyles = makeStyles((theme) => ({
  large: {
        width: 48,
        height: 48,
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
    console.log('char',reflection.characterId)
    console.log('persona', persona)
    
    

    
    
                                  
        return (
         
         <Box>                  
            
                {persona.name}     <br />
                <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />
                     
            
            {reflection.chapterIds.map((reflectionId,i) => {
               
               return (
                 <Box>
                       
                      Chapter  {reflectionId}
                   </Box>
               )
             })
            }
      <hr />

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


