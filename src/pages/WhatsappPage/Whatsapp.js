/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useRef } from 'react'
import { Box, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import NextButton from '../../components/NextButton'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import './style.scss'
import { useInkContext } from '../../contexts/InkContext'

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

  const useStyles = makeStyles((theme) => ({
    WhatsappWrapper: {
      backgroundImage: `url('/images/bg_ui_whatsapp.png')`,
      height: '90vh',
      [theme.breakpoints.up('md')]: {
        height: '660px',
      },
      width: "100%", 
    }
  }))

  const classes = useStyles()  
  var currentSpeaker = ""


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
                      className="Whatsapp__messages--sender"
                      m={1}
                      borderRadius={5}
                      key={step.text}
                    >
                      <Typography key={step.text}>{step.text}</Typography>
                    </Box>
                  </Fade>
                </Box>
              ) 
            } else if (step.tags[0]?.includes('speaker')) {     // this is needed to avoid rendering inner_monologue
              return (
                <Fade in={step.text} key={step.text} timeout={300}>
                  <Box key={step.text} my={2} mx={1} display="flex">
                    <Box className="Whatsapp__messages--receiver" borderRadius={5} p={1}>                    
                      <Typography key={step.text}  variant="overline">
                        {(step.tags[0]?.includes('speaker_1') ? specialTags.speaker_1_name : null)}
                        {(step.tags[0]?.includes('speaker_2') ? specialTags.speaker_2_name : null)}
                        {(step.tags[0]?.includes('speaker_3') ? specialTags.speaker_3_name : null)}
                        {(step.tags[0]?.includes('speaker_4') ? specialTags.speaker_4_name : null)}
                      </Typography> 
                      <Typography key={step.text}>{ step.text }</Typography>
                    </Box>
                  </Box>
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
    </Fade>
  )
}

export default Whatsapp
