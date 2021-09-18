import ShareableImageContainer from "../../ShareableImage/ShareableImageContainer";

const ShareStep = () => {

  // -- remove this section when receiving state variables,
  // refer to the below for input format required by component
  const data = {
    id: 1, 
    text: "I've just finished playing Nadia's Story!", 
    avatar: "nadia"}
  // -- 

  return <ShareableImageContainer data={data}></ShareableImageContainer>;
}

export default ShareStep;


// 1. DOM element with static html -> render this into a static image
// 2. convert the static html into dynamic with the state variables from react.
// name = "Nadia" 
// chapter = 1
//  <div style="background:abc.png"> Reflection goes here </div>