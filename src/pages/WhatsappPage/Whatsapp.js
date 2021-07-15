/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState, useRef } from 'react'
import { Box, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import NextButton from '../../components/NextButton'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import './style.scss'
import { useInkContext } from '../../contexts/InkContext'
import { CHARACTER_MAP } from '../../models/storyMap';
import { useParams } from 'react-router-dom'

const Whatsapp = (props) => {
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
    WhatsappWrapper: {
      backgroundImage: `url('/images/bg_ui_whatsapp.png')`,
      backgroundSize: "cover", 
      height: '660px',
      [theme.breakpoints.only('xs')]: {
        height: '100vh',
      },
      width: "100%", 
      // overflow: "hidden", 
    },
    // WhatsappMsgs: {
    //   maxHeight: maxHeight,
    // }
  }))

  const classes = useStyles()  
  const { name } = useParams()

  var prevSpeaker = ""
  function isNotPrevSpeaker (currentSpeaker) {
    if (currentSpeaker == prevSpeaker) {
      return false
    }
    return true 
  }
  function setCurrentSpeaker (currentSpeaker) {
    prevSpeaker = currentSpeaker
  }
  const persona = CHARACTER_MAP.find((character) => character.linkName === name); 

  // sound component to do the *ding*
// import ding from "../music/ding.wav"
  // import sound from "react-sound"
// inside render will put <sound> object

  // TO DO: make whatsapp screen fit the screen and customise controls
  return (
    <Fade in={true} timeout={500}>
      <Box className={classes.WhatsappWrapper}>
        {/* Whatsapp Header */}
        <div className="Whatsapp__header">
          <img 
            src={`/images/${specialTags.chat_group_image}`}
            alt="Chat Profile"
            className="Whatsapp__header--profile"
          />
          <div className="Whatsapp__header__description">
            <div className="Whatsapp__header__description--name">{specialTags.chat_group_title}</div>
            <div className="Whatsapp__header__description--status">Online</div>
          </div>
        </div>
        
        
        <Box>
            <Box
              className={`Whatsapp__messages ${choices.length > 0 ? 'choices' : ''}`}
              dir="ltr"
            >

              {currentParagraphs.map((step, i) => {
                if (step.tags[0]?.includes('speaker_self')) {
                  return (
                    <Box
                      key={step.text}
                      mx={1}
                      display="flex"
                      justifyContent="flex-end"
                    >
                      <Fade in={step.text} key={step.text} timeout={300}>
                        <Box
                          className={`Whatsapp__messages--sender ${isNotPrevSpeaker(step.tags[0])?"newSpeaker":""}`}
                          borderRadius={5}
                          key={step.text}
                        >
                          <Typography key={step.text}>{step.text}</Typography>
                          {setCurrentSpeaker(step.tags[0])}
                        </Box>
                      </Fade>
                    </Box>
                  ) 
                } else if (step.tags[0]?.includes('speaker')) {     // this is needed to avoid rendering inner_monologue
                  return (
                    <Fade in={step.text} timeout={300}>
                      <div key={step.text} className={`Whatsapp__messages--receiver ${isNotPrevSpeaker(step.tags[0])?"newSpeaker":""}`} 
                        style={{}}
                      >
                        <div className="Whatsapp__messages--receiver--name"
                            style={{color:persona.primaryColour,textTransform:"capitalize", display:isNotPrevSpeaker(step.tags[0])?"block":"none"}}>
                          {(step.tags[0]?.includes('speaker_1') ? specialTags.speaker_1_name : "")}
                          {(step.tags[0]?.includes('speaker_2') ? specialTags.speaker_2_name : "")}
                          {(step.tags[0]?.includes('speaker_3') ? specialTags.speaker_3_name : "")}
                          {(step.tags[0]?.includes('speaker_4') ? specialTags.speaker_4_name : "")}
                        </div>
                        {setCurrentSpeaker(step.tags[0])}
                        {/* <div>{step.text}</div> */}
                        <Typography key={step.text}>{step.text}</Typography>

                      </div>
                      {/* <Box key={step.text} my={2} mx={1} className="Whatsapp__messages--receiver" borderRadius={5}>  */}
                        {/* <Box className="Whatsapp__messages--receiver" borderRadius={5}>*/}
                          {/* {console.log(isNotPrevSpeaker(step.tags[0]))}
                          
                          <Typography className="Whatsapp__messages--receiver--name" variant="overline" 
                            style={{color:persona.primaryColour,textTransform:"capitalize", display:isNotPrevSpeaker(step.tags[0])?"block":"none"}}
                          >
                            {(step.tags[0]?.includes('speaker_1') ? specialTags.speaker_1_name : "")}
                            {(step.tags[0]?.includes('speaker_2') ? specialTags.speaker_2_name : "")}
                            {(step.tags[0]?.includes('speaker_3') ? specialTags.speaker_3_name : "")}
                            {(step.tags[0]?.includes('speaker_4') ? specialTags.speaker_4_name : "")} */}
                            {/* {console.log(step.text.substring(1, step.text.length))} */}
                          {/* </Typography> 
                          {setCurrentSpeaker(step.tags[0])}
                          {console.log(prevSpeaker)}
                          <Typography>{step.text}</Typography> */}
                        {/* </Box> */}
                      {/* </Box> */}
                    </Fade>
                  )
                }
              })}
              <div ref={elementRef} />
            </Box>
            <Box className="Whatsapp__sendWrapper">
              <Box
                className={`Whatsapp__sendWrapper__sendButton ${
                  choices.length === 0 ? '' : 'choice'
                }`}
              >
                Choose your reply...
              </Box>
              <Box className="Whatsapp__sendWrapper__sendButton--right">
                <ExpandMoreIcon />
              </Box>
            </Box>
            {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
            {choices.length > 0 ? (
              <Box
                className={`Whatsapp__choicesWrapper ${
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
        </Box> 

      </Box>
    </Fade>
  )
}

export default Whatsapp
