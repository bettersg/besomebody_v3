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

const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '100vh',
    [theme.breakpoints.up('xs')]: {
      height: '660px',
    },
    bottom: 0, 

  },
  headerText: {
    fontSize: '2rem',
    fontWeight: 800,
    color: '#ffffff',
    marginTop: 100,
  },
  bottom: {
    bottom: 0,
    height: '30vh',
    position: 'absolute',
    marginLeft: 'auto',
    marginRight: 'auto',
    left: 0,
    right:0,
    textAlign: 'center',
    // display: 'flex',    
    // flexDirection: 'column',
    // alignItems: 'center',
  },
  container: {
    margin: 'auto',
    textAlign: 'center',
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
  text: {
    color: '#ffffff',
    fontSize: '0.9rem',
    fontWeight: '400',
    textDecoration: 'none',
    marginBottom: 30,
    },
socialShare: {
    display: 'inline-block',
    marginRight: 10,
  }
}))

const ChapterEnd = ({ setPage , user }) => {
    const classes = useStyles()
    const { name , chapter } = useParams();
    const history = useHistory()

//   const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)
  
    const shareUrl = 'https://tobeyou.sg';
  const title = 'I just unlocked one ending for ' + name.charAt(0).toUpperCase() + name.toLowerCase().slice(1) + ' on ToBeYou.sg, a Singaporean interactive fiction game. Are you ready to join me there?' ;
    
    
  return (
  <Box className={classes.background}>
    <Container maxWidth="md" className={classes.container}>
        <Box py={4} display="flex" flexDirection="column" justifyContent="center" alignItems="center">
          <Typography className={classes.headerText}>Outcome Unlocked!</Typography>
                  <Typography className={classes.text}>You've unlocked one of the endings for {name.charAt(0).toUpperCase() + name.toLowerCase().slice(1)}'s story in chapter {chapter}</Typography> <br />
                  <Typography className={classes.text}>Replay the chapter to unlock the rest!</Typography>
      </Box>
        <Box className={classes.bottom}>                  
          <Button variant="contained" className={classes.btn} onClick={() => history.push('/chapters/' + name)}>
          Replay Chapter
                  </Button> <br />
                  <Button variant="contained" className={classes.btn} onClick={() => history.push('/characterchoice' )}>
          Character Menu
                  </Button><hr />
            <FacebookShareButton
            url={shareUrl}
            quote={title}
            className={classes.socialShare}
            >
            <FacebookIcon size={32} round />
            </FacebookShareButton>
            <TwitterShareButton
            url={shareUrl}
            title={title}
            className={classes.socialShare}
            >
            <TwitterIcon size={32} round />
            </TwitterShareButton>
            <TelegramShareButton
                url={shareUrl}
                title={title}
                className={classes.socialShare}
            >
                <TelegramIcon size={32} round />
            </TelegramShareButton>
            <WhatsappShareButton
            url={shareUrl}
            title={title}
            separator=":: "
            className={classes.socialShare}
          >
            <WhatsappIcon size={32} round />
            </WhatsappShareButton>
            <RedditShareButton
            url={shareUrl}
            title={title}
            windowWidth={660}
            windowHeight={460}
            className={classes.socialShare}
          >
            <RedditIcon size={32} round />
            </RedditShareButton>



    
      </Box>
    </Container>
  </Box>
  )
}

export default ChapterEnd;



 
        
          
           
