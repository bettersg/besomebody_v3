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
    const { chaptersByCharacter,user,reflectionIdsByCharacter } = props
    const classes = useStyles();  

    //   const reflectionId = parseInt(reflection);
    //   const { characterId, reflectionId } = REFLECTION_ID_MAP[reflectionId];
    // const persona = CHARACTER_MAP.find((character) => character.characterId === characterId)  
    // console.log('characterId',characterId)
    // console.log('reflectionID',reflectionId)
    // console.log('persona',persona)

    return (
      chaptersByCharacter.map((character,i) => {      
      return (
        <><HomeworkAvatar key={i} characters={character} reflectionIdsByCharacter={reflectionIdsByCharacter} user={user}/>
          <hr />
        </>
        )
      }
     )
    )
   
}


