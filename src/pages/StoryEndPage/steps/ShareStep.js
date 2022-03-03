import ShareableImageContainer from "../../ShareableImage/ShareableImageContainer";
import { CHARACTER_MAP } from '../../../models/storyMap'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import {  useHistory } from 'react-router-dom'



// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);


const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/reflection/avatar_bg_purple.png')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0,
    maxHeight: '100%',

  },
  headerText: {
    fontSize: '24px',
    fontWeight: 800,
    color: '#ffffff',
    textAlign: 'center',
    paddingTop: 69,
    marginBottom:15,
    margin: "0 48px"
  },
  bottom: {
    bottom: 0,
    height: '100px',
    position: 'absolute',
    marginLeft: 'auto',
    marginRight: 'auto',
    left: 0,
    right:0,
    textAlign: 'center',

    display: 'flex',    
    flexDirection: 'row',
    alignItems: 'center',
  },
  container: {
    margin: 'auto',
    textAlign: 'center',
  },
  imageContainer: {
    margin: 'auto',
    textAlign: 'center',
    paddingTop: '70px',
  },
  shareContainer: {
    margin: 'auto',
    textAlign: 'center',    
    height: '200px',
    marginTop: '220px !important',
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#664EFC',
    backgroundColor: '#664EFC',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  mainMenu: {
    fontWeight: '700',
    fontSize: "16px", 
    color:"white", 
    marginBottom: "36px", 
  }, 
  text: {
    color: '#ffffff',
    fontSize: '0.9rem',
    fontWeight: '400',
    textDecoration: 'none',
    marginBottom: 30,
  },
  socialLink: {
    padding: '20px 10px 0px 10px',
  }
}))


const ShareStep = ({ reflection, characterId, setState, getState, next }) => {
  const history = useHistory()
  const classes = useStyles()

  const persona = CHARACTER_MAP.find((character) => character.characterId === characterId);  // I modified the last part slightly because  in this component, we know the characterId so we can reference that instead of the useParams option.
  const personaName = persona.name.split(" ")[0]
  const personaFullName = persona.name

  
  const discordLink = CHARACTER_MAP.flatMap(character => character.chapters).find( ({reflectionId}) => reflectionId === reflection.id).discordLink

  // console.log('discord',discordLink)
    
  const data2 = getState('answerDocs') ? getState('answerDocs') : null;  
  // const empathyCharacter = getState('answerDocs') ?
  //   data2[2].answer ? persona.reflectionBrowser[0].empathyCharacters.find((character) => character.characterName.toUpperCase() === data2[2].answer.toUpperCase()) : persona.reflectionBrowser[0].empathyCharacters[0]
  //   : persona.reflectionBrowser[0].empathyCharacters.find((character) => character.characterName.toUpperCase() === personaName.toUpperCase());
  
  const data = getState('answerDocs') ? {
    storyName: personaFullName+"'s Story",
    text: data2[5].answer,
    avatar: data2[2].answer, 
    avatarImage: '/shareable_avatars/sharebubble.png'
    // avatarImage: persona.profileImage 
  } : {
    storyName: personaFullName + "'s Story",
    text: "I now know what it's like to be you, " + personaName + ".",
    avatar: personaName.toLowerCase(), 
    avatarImage: '/shareable_avatars/sharebubble.png'
    // avatarImage: persona.profileImage
  }

  // console.log (persona.profileImage)
   // -- remove this section when receiving state variables,
  // refer to the below for input format required by component
  // const data = {
  //   id: 1, 
  //   text: `I've just finished playing the Lorem ipsum dolor Nadia's Story! ut labore et dolore magna aliqua. 
  //   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com.`,
  //   avatar: "nadia"}
  // -- 

  return (
    <Box className={classes.background}>
      {/* <Typography className={classes.headerText}>Join our ToBeYou community</Typography> */}
      <Box className={classes.imageContainer}>
        <ShareableImageContainer data={data}></ShareableImageContainer>
      </Box>
      <Box className={classes.shareContainer}>
      <Typography className={classes.headerText}>Join our community</Typography>
        <a href={discordLink} target="_blank" ><img src="/reflection/discord_icon.png" className={classes.socialLink} /></a>
        <a href="https://www.facebook.com/groups/4539124799548644" target="_blank"><img src="/reflection/facebook_icon.png" className={classes.socialLink} /></a>
      </Box>
      <Box className={classes.bottom}>  
        <Box sx={{width:'50%', left:0}}>
          <Typography  style={{ color: '#ffffff' , fontWeight: '700', cursor: 'pointer' }} onClick={() => history.push('/characterchoice')}>
            Main Menu
          </Typography>
        </Box>
        <Box sx={{width:'50%', left:0}}>
          <a href="mailto:tobeyou@better.sg" target="_blank" rel="noreferrer" style={{ color: '#ffffff' }}>Send us feedback</a>
        </Box>
      </Box>
    </Box>
  );

}

export default ShareStep;


// 1. DOM element with static html -> render this into a static image
// 2. convert the static html into dynamic with the state variables from react.
// name = "Nadia" 
// chapter = 1
//  <div style="background:abc.png"> Reflection goes here </div>