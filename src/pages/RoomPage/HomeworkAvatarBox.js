import React from "react";
import {
  makeStyles
} from "@material-ui/core/styles";
import { Box, Avatar, Button , Typography }
    from "@material-ui/core";
import { CHARACTER_MAP, REFLECTION_ID_MAP } from '../../models/storyMap'
import HomeworkAvatar from './HomeworkAvatar'

const useStyles = makeStyles((theme) => ({
  large: {
        width: 48,
        height: 48,
  }
}));



export default function HomeworkAvatarBox(props) {
    const { result2 } = props
    const classes = useStyles();  

//   const reflectionId = parseInt(reflection);
//   const { characterId, reflectionId } = REFLECTION_ID_MAP[reflectionId];
    // const persona = CHARACTER_MAP.find((character) => character.characterId === characterId)  
    // console.log('characterId',characterId)
    // console.log('reflectionID',reflectionId)
    // console.log('persona',persona)

    return (
    result2.map((reflection,i) => {
      
      return (
        <><HomeworkAvatar key={i} reflection={reflection} />
          <hr />
        </>
        //  <Box key={reflection}>                  
            
        //     Character: {reflection.characterId}        
            
        //     {reflection.chapterIds.map((reflectionId,i) => {
               
        //        return (
        //          <Box>
        //                {/* <HomeworkAvatar characterId={reflection.characterId} reflectionId={reflectionId} />                  */}
        //                {reflectionId}
        //            </Box>
        //        )
        //      })
        //     }


        //  </Box>
        )
      }
     )
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


