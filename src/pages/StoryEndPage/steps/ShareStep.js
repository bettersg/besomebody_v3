import ShareableImage from "../../../components/ShareableImage/ShareableImage";
import {  useHistory } from 'react-router-dom'
import { Box, Typography, Button, CircularProgress } from '@material-ui/core'


const ShareStep = () => {
  const history = useHistory()

  // -- remove this section when receiving state variables,
  // refer to the below for input format required by component
  const data = {
    id: 1, 
    text: "I've just finished playing Nadia's Story!", 
    avatar: "nadia"}
  // -- 

  return  (
    <Box >
      <ShareableImage data={data}></ShareableImage>;
            <Button variant="contained"onClick={() => history.push("/")}>
            Go back to Main Menu
            </Button>
            <a href="mailto:tobeyou@better.sg" target="_blank" rel="noreferrer" style={{color:'#ffffff'}}>Send us feedback</a>
    </Box>
    )
  
  
}

export default ShareStep;


// 1. DOM element with static html -> render this into a static image
// 2. convert the static html into dynamic with the state variables from react.
// name = "Nadia" 
// chapter = 1
//  <div style="background:abc.png"> Reflection goes here </div>