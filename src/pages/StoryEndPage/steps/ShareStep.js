import ShareableImage from "../../../components/ShareableImage/ShareableImage";
import {  useParams, useHistory } from 'react-router-dom'
import { Box, Typography, Button, CircularProgress } from '@material-ui/core'

import {
  EmailShareButton,
  FacebookShareButton,
  InstapaperShareButton,
  LineShareButton,
  LinkedinShareButton,
  RedditShareButton,
  TelegramShareButton,
  TwitterShareButton,
  WhatsappShareButton,
  FacebookIcon,
  TwitterIcon,
  LinkedinIcon,
  TelegramIcon,
  WhatsappIcon,
  RedditIcon,
  EmailIcon,
  InstapaperIcon,
  
} from "react-share";

const ShareStep = () => {
  const history = useHistory()
  const { name  } = useParams();


  const shareUrl = 'https://tobeyou.sg';
  const title = 'I just unlocked an ending for ' + name.charAt(0).toUpperCase() + name.toLowerCase().slice(1) + ' on ToBeYou.sg, a Singaporean interactive fiction game. Are you ready to explore ' + name.charAt(0).toUpperCase() + name.toLowerCase().slice(1) + '\'s story too?' ;
   

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
      <Box>
        <br />
        <a href="mailto:tobeyou@better.sg" target="_blank" rel="noreferrer" style={{ color: '#ffffff' }}>Send us feedback</a>
      </Box>
     {/* if the user is using a mobile phone, use the webshare API. If the user is using a web browser, can show these links instead: */}
      <Box>
      <br />
        <FacebookShareButton
          url={shareUrl}
          quote={title}
          
          >
          <FacebookIcon size={32} round />
        </FacebookShareButton>
        <TwitterShareButton
          url={shareUrl}
          title={title}
          
          >
          <TwitterIcon size={32} round />
        </TwitterShareButton>
        <TelegramShareButton
          url={shareUrl}
          title={title}
          
          >
          <TelegramIcon size={32} round />
        </TelegramShareButton>
        <WhatsappShareButton
          url={shareUrl}
          title={title}
          separator=":: "
          
          >
          <WhatsappIcon size={32} round />
        </WhatsappShareButton>
        <RedditShareButton
          url={shareUrl}
          title={title}
          windowWidth={660}
          windowHeight={460}
          
          >
          <RedditIcon size={32} round />
        </RedditShareButton>
      </Box>


    </Box>
    )
  
  
}

export default ShareStep;


// 1. DOM element with static html -> render this into a static image
// 2. convert the static html into dynamic with the state variables from react.
// name = "Nadia" 
// chapter = 1
//  <div style="background:abc.png"> Reflection goes here </div>