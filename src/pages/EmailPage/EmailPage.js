import React, { useEffect, useState, useRef } from 'react'
import { Box, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import NextButton from '../../components/NextButton'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import './style.scss'
import { useInkContext } from '../../contexts/InkContext'
import { CHARACTER_MAP } from '../../models/storyMap';
import { useParams } from 'react-router-dom'
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

  // console.log(currentParagraphs)
  const mergedEmail = currentParagraphs =>
    currentParagraphs
      // .filter(paragraph => paragraph.tags[0].includes('email'))
      .map(paragraph => paragraph.text);
    
  // console.log('mergedEmail', mergedEmail(currentParagraphs))
  // console.log('specialTags', specialTags)

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
          
          <div className="Email__header__description">
            <div >To: {specialTags.emailto}</div>            
            <div >From: {specialTags.emailfrom}</div>            
            <div >Subject: {specialTags.emailsubject}</div>            
          </div>
        </div>
        
        
        <Box mt={2} >
          {/* Email Messages */}
          {/* {mergedEmail(currentParagraphs)} */}
          {currentParagraphs.map((paragraph, i) => { 
            if (paragraph.tags[0].includes('speaker_1')) {
              return (
                <div key={i} className="Email__msg">
                  <div className="Email__msg__text">{paragraph.text.split('/n').map((line, i) => <span key={i}>{line}<br /></span>)}</div>
                </div>
              )
            }
          })}

        </Box>
        <Box mt={2} >
          {/* Reply Email Message */}
          {specialTags.replyemaildate &&
            <Box>
              {specialTags.replyemaildate} <br />
              {specialTags.replyemailtext.split('/n').map((line, i) => <span key={i}>{line}<br /></span>)}
            </Box>
          
          }
          
        </Box>
        <NextButton getStory={getStory} />
      </Box>
    </Fade>
  )
}

export default Email
