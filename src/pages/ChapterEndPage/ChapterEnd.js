import React , { useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
// import { useAuth } from '../../../contexts/AuthContext'
import { useParams, useHistory } from 'react-router-dom'
// import {
//     EmailShareButton,
//     FacebookShareButton,
//     InstapaperShareButton,
//     LineShareButton,
//     LinkedinShareButton,
//     RedditShareButton,
//     TelegramShareButton,
//     TwitterShareButton,
//     WhatsappShareButton,
//     FacebookIcon,
//     TwitterIcon,
//     LinkedinIcon,
//     TelegramIcon,
//     WhatsappIcon,
//     RedditIcon,
//     EmailIcon,
//     InstapaperIcon,
    
// } from "react-share";
import ShareableImageContainer from '../ShareableImage/ShareableImageContainer';
import { CHARACTER_MAP } from '../../models/storyMap'

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

const ChapterEnd = () => {
    const classes = useStyles()
    const { name , chapter } = useParams();
  const history = useHistory()
  const chapterNumber = chapter
  
  const persona = CHARACTER_MAP.find((character) => character.linkName === name);  
  const personaName = persona.name.split(" ")[0]
  const personaFullName = persona.name
  
  const discordLink = persona.chapters.find((chapter) => chapter.chapterId == chapterNumber ).discordLink 
  // console.log(chapterNumber)
  // .find(({ chapterId }) => chapterId === chapter).discordLink
  
  const characterId = persona.characterId
  // console.log(characterId)

  const data = { 
    storyName: personaFullName + "'s Story",
    text: "I now know what it's like to be you, " + personaName + ".",
    avatar: personaName.toLowerCase(), 
    avatarImage: '/shareable_avatars/sharebubble.png'
    // avatarImage: persona.profileImage
  }


//   const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)
  
    const shareUrl = 'https://tobeyou.sg';
  const title = 'I am learning what it is like to be ' + name.charAt(0).toUpperCase() + name.toLowerCase().slice(1) + '. Join me on ToBeYou.sg, a Singaporean interactive fiction game, and take the pledge to make Singapore a more empathetic society.' + name.charAt(0).toUpperCase() + name.toLowerCase().slice(1) + '\'s story too?' ;
    
  // console.log('user',user)
    
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
    
  // <Box className={classes.background}>
  //   <Container maxWidth="md" className={classes.container}>
  //       <Box py={4} display="flex" flexDirection="column" justifyContent="center" alignItems="center">
  //         <Typography className={classes.headerText}>Outcome Unlocked!</Typography>
  //                 <Typography className={classes.text}>You've unlocked one of the endings for {name.charAt(0).toUpperCase() + name.toLowerCase().slice(1)}'s story in chapter {chapter}</Typography> <br />
  //                 <Typography className={classes.text}>Share this achievement or your own story on social media and tag us at <b>#tobeyou</b> and <b>#bettersg</b> . </Typography>
  //     </Box>
  //       <Box className={classes.bottom}>                  
  //         <Button variant="contained" className={classes.btn} onClick={() => history.push('/chapters/' + name)}>
  //         Replay Chapter
  //                 </Button> <br />
  //                 <Button variant="contained" className={classes.btn} onClick={() => history.push('/characterchoice' )}>
  //         Character Menu
  //                 </Button><hr />
  //           <FacebookShareButton
  //           url={shareUrl}
  //           quote={title}
  //           className={classes.socialShare}
  //           >
  //           <FacebookIcon size={32} round />
  //           </FacebookShareButton>
  //           <TwitterShareButton
  //           url={shareUrl}
  //           title={title}
  //           className={classes.socialShare}
  //           >
  //           <TwitterIcon size={32} round />
  //           </TwitterShareButton>
  //           <TelegramShareButton
  //               url={shareUrl}
  //               title={title}
  //               className={classes.socialShare}
  //           >
  //               <TelegramIcon size={32} round />
  //           </TelegramShareButton>
  //           <WhatsappShareButton
  //           url={shareUrl}
  //           title={title}
  //           separator=":: "
  //           className={classes.socialShare}
  //         >
  //           <WhatsappIcon size={32} round />
  //           </WhatsappShareButton>
  //           <RedditShareButton
  //           url={shareUrl}
  //           title={title}
  //           windowWidth={660}
  //           windowHeight={460}
  //           className={classes.socialShare}
  //         >
  //           <RedditIcon size={32} round />
  //           </RedditShareButton>
  //         <br />
  //         <a href="mailto:tobeyou@better.sg" target="_blank" rel="noreferrer" style={{color:'#ffffff'}}>Send us feedback</a>


    
  //     </Box>
  //   </Container>
  // </Box>
  )
}

export default ChapterEnd;



 
        
          
           
