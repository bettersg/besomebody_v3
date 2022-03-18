import React from "react";
import {
  makeStyles
} from "@material-ui/core/styles";
import { Avatar, Button , Typography }
    from "@material-ui/core";
import { CHARACTER_MAP , REFLECTION_ID_MAP} from '../../models/storyMap'

const useStyles = makeStyles((theme) => ({
  large: {
        width: 50,
        height: 50,
  }
}));


export default function HomeworkAvatar(props) {
    const { reflection } = props
  const classes = useStyles();  


  const reflectionId = parseInt(reflection);
  const { characterId, chapterId } = REFLECTION_ID_MAP[reflectionId];
  const persona = CHARACTER_MAP.find((character) => character.characterId === characterId)  
    // console.log(persona)

    
    return (      
      <div>          
          <Avatar alt={persona.name} src={persona.profileImage} className={classes.large} />
          Chapter {chapterId}
      </div>
   
  );
}


