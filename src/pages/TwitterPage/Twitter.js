/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState, useRef } from 'react'
import { Box, Fade, Avatar, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import NextButton from '../../components/NextButton'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import './style.scss'
import { useInkContext } from '../../contexts/InkContext'
import { CHARACTER_MAP } from '../../models/storyMap';
import { useParams } from 'react-router-dom'
import { ReactComponent as Arrow } from './Assets/arrow.svg';

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const Twitter = (props) => {
  const { currentParagraphs } = props
  const { getStory, choices, setChoice, specialTags } = useInkContext()

  // ========================================================
  // Help to scroll to bottom of the paragraphs render screen
  // ========================================================
  const elementRef = useRef()
  const innerMonoRef = useRef()

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
    TwitterWrapper: {
      backgroundImage: `url('/images/bg_ui_twitter.png')`,
      backgroundSize: "cover", 
      height: '660px',
      [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
      },
      width: "100%", 
      // overflow: "hidden", 
    },
    twitterImage: {
      maxWidth: 150,
      maxHeight: 150,
    }
    // TwitterMsgs: {
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

  // console.log(currentParagraphs)
  // TO DO: make Twitter screen fit the screen and customise controls
  return (
    <Fade in={true} timeout={500}>
      <Box className={classes.TwitterWrapper}>
        {/* Twitter Header */}
        {/* if (step.tags[0]?.includes('speaker_self')) {
        
          <>
            
          </>
          
        : null} */}
          <Box sx={{height: "72px", background: "white", borderBottom:"1px solid #E6E6E6"}}></Box>
        
            <Box
              className={`Twitter__messages ${choices.length > 0 ? 'choices' : ''}`}
              dir="ltr">
              
              {/* Twitter Messages */}
              
          {currentParagraphs.map((step, i) => {              
            if (step.tags[0]?.includes('thread_header')) { 
              if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                return (
                  <>
                    <div className="Twitter__header">
                      <img 
                        src={`/images/${specialTags.chat_group_image}`}
                        alt="Chat Profile"
                        className="Twitter__header--profile"
                      />
                      <div className="Twitter__header__description" style={{marginLeft: "12px"}}>
                        <Typography className="Twitter__header__description--name" style={{color:persona.primaryColour}}>{name}</Typography>
                        <Typography className="Twitter__header__description--tag">{"@" + specialTags.speaker_self_tag? "@" + specialTags.speaker_self_tag : '@'+name}</Typography>            
                      </div>
                    </div>
                    <div class="Twitter__mainpost">
                      <Typography class={"Twitter__mainpost--tweet"}>
                        {step.text}
                        {(specialTags.likes ?   <Typography key={specialTags.likes } className="Twitter__mainpost--likes">{specialTags.likes }</Typography> : null)}
                      </Typography>
                    </div>
                  </>
                )
              }
              
            else if (step.tags[0]?.includes('speaker_self')) {
              if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                  return (
                     
                      <Fade in={step.text} key={step.text} timeout={300}>
                        <Box
                          className={`Twitter__messages--threadpost`}
                          // borderRadius={5}
                          key={step.text}
                        >
                          {/* {(step.tags[1]?.includes('image') ?
                            <img src={'/images/ico_' + name +'.png'} alt={step.text} className={classes.twitterImage} /> :
                            <div className="Twitter__messages--tweetContent">
                              <div className="Twitter__messages--handle">
                                <div className="Twitter__messages--name">
                                  { name}                                 
                                </div>
                                <div className="Twitter__messages--tag">
                                  {'@'+specialTags.speaker_self_tag}                                                      
                                </div>
                              </div>
                              <Typography key={step.text} className="Twitter__messages--tweet">{step.text}</Typography>
                            </div>
                          )} */}
                        <div style={{ display: "flex", alignItems: "center" }}>
                        <Avatar   src={`/images/${specialTags.chat_group_image}`} />
                            <div className="Twitter__messages--tweetContent">
                              <div className="Twitter__messages--handle">
                                <div className="Twitter__messages--name">
                                  { name}                                 
                                </div>
                                <div className="Twitter__messages--tag">
                                  {'@'+specialTags.speaker_self_tag}                                                      
                                </div>
                              </div>
                              <div className="Twitter__messages--replyingTo">
                                <Typography key={step.text} className="Twitter__messages--tweet_self">{step.text}</Typography>
                              </div>
                            </div>
                          </div>
                          {setCurrentSpeaker(step.tags[0])}
                        </Box>
                      </Fade>
                    
                  ) 
            } else if (step.tags[0]?.includes('speaker')) {     // this is needed to avoid rendering inner_monologue
              if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                  return (
                    <Fade in={step.text} timeout={300}>
                      <div key={step.text} className={`Twitter__messages--threadpost`} 
                      >
                        <div style={{display: "flex", alignItems:"center"}}>
                          <Avatar>
                              {/* {(step.tags[0]?.includes('speaker_1') ? (specialTags.speaker_1_name).charAt(0) : null)}
                              {(step.tags[0]?.includes('speaker_2') ? (specialTags.speaker_2_name).charAt(0) : null)}
                              {(step.tags[0]?.includes('speaker_3') ? (specialTags.speaker_3_name).charAt(0) : null)}
                              {(step.tags[0]?.includes('speaker_4') ? (specialTags.speaker_4_name).charAt(0) : null)}
                              {(step.tags[0]?.includes('speaker_5') ? (specialTags.speaker_5_name).charAt(0) : null)}
                              {(step.tags[0]?.includes('speaker_6') ? (specialTags.speaker_6_name).charAt(0) : null)} */}
                             
                        </Avatar> 
                          <div className="Twitter__messages--tweetContent">
                            <div className="Twitter__messages--handle">
                              <div className="Twitter__messages--name">
                                {(step.tags[0]?.includes('speaker_1') ? specialTags.speaker_1_name : null)}
                                {(step.tags[0]?.includes('speaker_2') ? specialTags.speaker_2_name : null)}
                                {(step.tags[0]?.includes('speaker_3') ? specialTags.speaker_3_name : null)}
                                {(step.tags[0]?.includes('speaker_4') ? specialTags.speaker_4_name : null)}
                                {(step.tags[0]?.includes('speaker_5') ? specialTags.speaker_5_name : null)}
                                {(step.tags[0]?.includes('speaker_6') ? specialTags.speaker_6_name : null)}                          
                              </div>
                              <div className="Twitter__messages--tag">
                                {(step.tags[0]?.includes('speaker_1') ? '@'+specialTags.speaker_1_tag : null)}
                                {(step.tags[0]?.includes('speaker_2') ? '@'+specialTags.speaker_2_tag : null)}
                                {(step.tags[0]?.includes('speaker_3') ? '@'+specialTags.speaker_3_tag : null)}
                                {(step.tags[0]?.includes('speaker_4') ? '@'+specialTags.speaker_4_tag : null)}
                                {(step.tags[0]?.includes('speaker_5') ? '@'+specialTags.speaker_5_tag : null)}
                                {(step.tags[0]?.includes('speaker_6') ? '@'+specialTags.speaker_6_tag : null)}                          
                              </div>

                            </div>
                            <div className="Twitter__messages--replyingTo">Replying to&nbsp;<span style={{color:"#19A3AD"}}>{specialTags.speaker_self_tag? '@'+specialTags.speaker_self_tag : '@'+name}</span></div>

                          </div>
                          {setCurrentSpeaker(step.tags[0])}
                          {/* <div>{step.text}</div> */}

                        </div>
                       
                        {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.twitterImage} /> :  <Typography key={step.text} className="Twitter__messages--tweet">{step.text}</Typography> )}

                      </div>
                    </Fade>
                  )
                } else if (step.tags[0]?.includes('clear')) {     // this is needed to avoid rendering inner_monologue
                if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                    return (null)
                } else if (step.tags[0]?.includes('inner_monologue')) {                   
                  return (
                    <div className="Twitter__innerMono" ref={innerMonoRef}><Typography key={step.text}  className="Twitter__innerMono--text"> {step.text}</Typography> </div>
                    )
                }
              
              })}
            
  
            



              <div ref={elementRef} />
            </Box>
            <Box className="Twitter__sendWrapper">
              <Box
                className={`Twitter__sendWrapper__sendButton ${
                  choices.length === 0 ? '' : 'choice'
                }`}
              >
                Continue...
              </Box>
              <Box className="Twitter__sendWrapper__sendButton--right">
                <Arrow />
              </Box>
            </Box>
            {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
            {choices.length > 0 ? (
              <Box
                className={`Twitter__choicesWrapper ${
                  choices.length === 0 ? 'no-choices' : 'w3-animate-fading'
                }`}
                // ref={choicesRef}
              >
            {choices.map((choice, i) => {
                  if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
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

      {/* </Box> */}
    </Fade>
  )
}

export default Twitter
