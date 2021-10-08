import ShareableImageContainer from "../../ShareableImage/ShareableImageContainer";
import { CHARACTER_MAP } from '../../../models/storyMap'

const StoryBrowserShare = ({ reflection, characterId, setState, getState, next }) => {


  // const data2 = getState('answerDocs')
  // console.log('answerdocs ', data2) // this shows you all the data that has been collected from the state
  // console.log('characterId ', characterId) 

  const persona = CHARACTER_MAP.find((character) => character.characterId === characterId);  // I modified the last part slightly because  in this component, we know the characterId so we can reference that instead of the useParams option.

  // console.log('persona ', persona) 

  const personaName = persona.name.split(" ")[0]

  const empathyCharacter = personaName ? persona.reflectionBrowser[0].empathyCharacters.find((character) => character.characterName.toUpperCase() === personaName.toUpperCase()) : persona.reflectionBrowser[0].empathyCharacters[0];

  const data = {
    storyName: personaName+"'s Story",
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

export default StoryBrowserShare;


// 1. DOM element with static html -> render this into a static image
// 2. convert the static html into dynamic with the state variables from react.
// name = "Nadia" 
// chapter = 1
//  <div style="background:abc.png"> Reflection goes here </div>