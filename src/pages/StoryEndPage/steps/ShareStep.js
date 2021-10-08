import ShareableImageContainer from "../../ShareableImage/ShareableImageContainer";
import { CHARACTER_MAP } from '../../../models/storyMap'

const ShareStep = ({ reflection, characterId, setState, getState, next }) => {

  const persona = CHARACTER_MAP.find((character) => character.characterId === characterId);  // I modified the last part slightly because  in this component, we know the characterId so we can reference that instead of the useParams option.
  const personaName = persona.name.split(" ")[0]
    
  const data2 = getState('answerDocs') ? getState('answerDocs') : null;  
  const empathyCharacter = getState('answerDocs') ?
    data2[2].answer ? persona.reflectionBrowser[0].empathyCharacters.find((character) => character.characterName.toUpperCase() === data2[2].answer.toUpperCase()) : persona.reflectionBrowser[0].empathyCharacters[0]
    : persona.reflectionBrowser[0].empathyCharacters.find((character) => character.characterName.toUpperCase() === personaName.toUpperCase());
  const data = getState('answerDocs') ? {
      storyName: personaName+"'s Story",
      text: data2[5].answer,
      avatar: data2[2].answer, 
      avatarImage: empathyCharacter.characterImage 
    } : {
      storyName: personaName + "'s Story",
      text: "I completed playing the interactive fiction game ToBeYou.sg, and I want you to join me!",
      avatar: personaName.toLowerCase(), 
      avatarImage: empathyCharacter.characterImage
    }



  

   // -- remove this section when receiving state variables,
  // refer to the below for input format required by component
  // const data = {
  //   id: 1, 
  //   text: `I've just finished playing the Lorem ipsum dolor Nadia's Story! ut labore et dolore magna aliqua. 
  //   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com.`,
  //   avatar: "nadia"}
  // -- 

  return <ShareableImageContainer data={data}></ShareableImageContainer>;

}

export default ShareStep;


// 1. DOM element with static html -> render this into a static image
// 2. convert the static html into dynamic with the state variables from react.
// name = "Nadia" 
// chapter = 1
//  <div style="background:abc.png"> Reflection goes here </div>