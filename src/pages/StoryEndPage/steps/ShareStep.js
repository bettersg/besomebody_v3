import ShareableImageContainer from "../../ShareableImage/ShareableImageContainer";
import { CHARACTER_MAP } from '../../../models/storyMap'

const ShareStep = ({ reflection, characterId, setState, getState, next }) => {


  
  const data2 = getState('answerDocs')
  console.log('answerdocs ', data2)              // this shows you all the data that has been collected from the state
  console.log('answedocs relatable character name ', data2[2].answer)    // This gives you the character he selected, which let's you know which image to select from the story map
  console.log('answerdocs text ', data2[4].answer)    // this gives you the quote

  const persona = CHARACTER_MAP.find((character) => character.characterId === characterId);  // I modified the last part slightly because  in this component, we know the characterId so we can reference that instead of the useParams option.

  console.log('persona ', persona) // now you have access to everything in the story map. I've also made some edits to the storymap
  console.log('persona reflectionBrowser empathyCharacters ', persona.reflectionBrowser[0].empathyCharacters) // this lists all the options for empathy characters.

  // you need to match the relatable character name (line 10) to the empathycharacter (best to match using .toUpperCase() for both so that textcase is not a problem)
  // const avatarImage = ?  // IMPT you then need to assign the avatar image from  the storymap, so that it is not hardcoded in your ShareableImageContainer

  const data = {
    storyName: persona.name,
    text: data2[4].answer,
    avatar: data2[2].answer 
    // avatarImage: avatarImage // IMPT can you figure this part out and use the correct image in the ShareableImageContainer?
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