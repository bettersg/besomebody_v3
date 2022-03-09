import React, { useEffect, useState, useRef } from 'react'
import { Box, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import NextButton from '../../components/NextButton'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import './style.scss'
import { useInkContext } from '../../contexts/InkContext'
import { CHARACTER_MAP } from '../../models/storyMap';
import { useParams } from 'react-router-dom'
import ClearRoundedIcon from '@material-ui/icons/ClearRounded';
import AttachmentRoundedIcon from '@material-ui/icons/AttachmentRounded';
import SendIcon from '@material-ui/icons/Send';
import ExpandMoreRoundedIcon from '@material-ui/icons/ExpandMoreRounded';
// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);



const Email = (props) => {
  const { currentParagraphs } = props
  const { getStory, choices, setChoice, specialTags } = useInkContext()

  // ========================================================
  // Help to scroll to bottom of the paragraphs render screen
  // ========================================================
  const elementRef = useRef()


  // Eveytime currentParagraphs gets updated or choices appear, scroll to the elementRef
  useEffect(() => {
    if (elementRef.current) {
      elementRef.current.scrollIntoView({
        behavior: 'smooth',
      })
    }
  }, [elementRef, currentParagraphs, choices])

  // const [choicesHeight, setChoicesHeight] = useState("10px")
  // const [maxHeight, setMaxHeight] = useState("10px")
  // const choicesRef = useRef();
  // useEffect(() => {
  //   if (choicesRef.current) {
  //     setChoicesHeight(choicesRef.current.offsetHeight);
  //     setMaxHeight(594 - choicesHeight);
  //     console.log(choicesRef.current.offsetHeight)
  //     console.log(maxHeight)
  //   }
  // }, []);
  const useStyles = makeStyles((theme) => ({
    EmailWrapper: {
      backgroundImage: `url('/images/bg_ui_email.png')`,
      backgroundSize: "cover", 
      height: '660px',
      [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
      },
      width: "100%", 
      // overflow: "hidden", 
    },
    EmailImage: {
      maxWidth: 150,
      maxHeight: 150,
    }
    // EmailMsgs: {
    //   maxHeight: maxHeight,
    // }
  }))

  const classes = useStyles()  
  const { name } = useParams()

  // var prevSpeaker = ""
  // function isNotPrevSpeaker (currentSpeaker) {
  //   if (currentSpeaker == prevSpeaker) {
  //     return false
  //   }
  //   return true 
  // }
  // function setCurrentSpeaker (currentSpeaker) {
  //   prevSpeaker = currentSpeaker
  // }
  // const persona = CHARACTER_MAP.find((character) => character.linkName === name); 

  // sound component to do the *ding*
// import ding from "../music/ding.wav"  
  function playSound(file) {
    var audio = new Audio(file);
    audio.play();
  }


//  console.log(currentParagraphs)
  const mergedEmail = () =>
    currentParagraphs
      // .filter(paragraph => paragraph.tags[0].includes('email'))
      .map((paragraph, idx) => {
        return (
         paragraph.tags[0].includes('speaker_1') ?
           <p className="text-blue">{paragraph.text.split('/n').map((line, i) => <span key={i}>{line}<br /></span>)}</p> :
           (<span className="typed-out type" style={{"--n": paragraph.text.length}}>{paragraph.text}<br/></span>)
           )
      });
    
// console.log('mergedEmail', choices)    
//  console.log('specialTags', specialTags)

  // const mergedEmail = currentParagraphs =>
  //   currentParagraphs.map((step, i) => {
  //     if (step?.tags[0].includes('emailstart')) {
  //       while (step?.tags[0] !== "emailend") {
  //         const nextStep = step[i + 1]
  //         const mergedParagraphs = [...mergedParagraphs[i], ...nextStep]
  //         return mergedParagraphs
  //       }        
  //     }
  //   })

  // function mergedEmail(currentParagraphs) {
  //   currentParagraphs.map((step, i) => { 
  //     if (step.email === "start") {
  //       while (step.email !== "end") {
  //         // merge existing paragraph array with new step paragraph array until you hit the end marker
  //         const nextStep = step[i + 1]
  //         const mergedParas = [...mergedParas[i], ...nextStep]                
  //       }
  //   }
  //   // return mergedParas;
  //   })
  //   console.log(mergedEmail)
  // }
  
  return (
    <Fade in={true} timeout={500}>
      <Box className={classes.EmailWrapper}>
        {/* Email Header */}
        <div className="Email__header">

          <Typography style={{color: "white"}}>{specialTags.emailheader}</Typography>
          {/* <div className='Email__header--right'>
            <AttachmentRoundedIcon style={{marginRight: "10px", color: "white"}} />
            <SendIcon style={{color: "white"}}  />
          </div> */}
        </div>  

          {/* <div className="Email__header__description"> */}
            <div className="Email__details"> <div className='Email__details--name'>To</div>  {specialTags.emailto}</div>            
            <div className="Email__details" > <div className='Email__details--name'>From</div> {specialTags.emailfrom}</div>            
            <div className="Email__details" > <div className='Email__details--name'>Subject</div> {specialTags.emailsubject}</div>            
          {/* </div> */}
        
        
        
        <Box id='EmailText' className={`Email__messages ${choices.length > 0 ? 'choices' : ''}`}>
          {/* Email Messages */}

          <div className="typing">
            <div className="text-cover"></div>
              {mergedEmail()}
            
          </div>
          <div>
              {/* Reply Email Message */}
              {specialTags.replyemaildate &&
                <Box className="Email__replySection">
                  {specialTags.replyemaildate} <br />
                  <Box className="Email__replySection--content">
                    {specialTags.replyemailtext.split('/n').map((line, i) => <span key={i}>{line}<br /><br /></span>)}
                  </Box>
                </Box>
              
              }
          </div>

        </Box>
        <div className="Email__sendWrapper">
          <div className={`Email__sendWrapper__sendButton${choices.length !== 0 ?" have-choice":""}`}>{choices.length !== 0 ? "Choose your reply" :"Tap to draft email"}</div>
          <div className='Email__sendWrapper__sendButton--right '><ExpandMoreRoundedIcon/></div>
        </div>
        
        {choices.length > 0 ? (
              <Box
                className={`Email__choicesWrapper ${
                  choices.length === 0 ? 'no-choices' : 'w3-animate-fading'
                }`}
                // ref={choicesRef}
              >
                {choices.map((choice, i) => {
                  return (
                    <Box
                      className="choices"
                      onClick={() => setChoice(choice.index)}
                      key={i}
                    >
                      {choice.text}
                    </Box>
                  )
                })}
              </Box>
            ) : (
              <NextButton getStory={getStory} />
            )}
        {/* <NextButton getStory={getStory} /> */}
      </Box>
    </Fade>
  )
}

export default Email
