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
// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const Twitch = (props) => {
//   const { currentParagraphs } = props
//   const { getStory, choices, setChoice, specialTags } = useInkContext()

  // ========================================================
  // Help to scroll to bottom of the paragraphs render screen
  // ========================================================
  const elementRef = useRef()

  // Eveytime currentParagraphs gets updated or choices appear, scroll to the elementRef
//   useEffect(() => {
//     if (elementRef.current) {
//       elementRef.current.scrollIntoView({
//         behavior: 'smooth',
//       })
//     }
//   }, [elementRef, currentParagraphs, choices])

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
    TwitchWrapper: {
    //   backgroundImage: `url('/images/bg_ui_Twitch.png')`,
    //   backgroundSize: "cover", 
      backgroundColor: 'white',
      height: '660px',
      [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
      },
      width: "100%", 
      // overflow: "hidden", 
    },
    twitchImage: {
      maxWidth: 150,
      maxHeight: 150,
    }
    // TwitchMsgs: {
    //   maxHeight: maxHeight,
    // }
  }))

  const classes = useStyles()  
//   const { name } = useParams()

//   var prevSpeaker = ""
//   function isNotPrevSpeaker (currentSpeaker) {
//     if (currentSpeaker == prevSpeaker) {
//       return false
//     }
//     return true 
//   }
//   function setCurrentSpeaker (currentSpeaker) {
//     prevSpeaker = currentSpeaker
//   }
//   const persona = CHARACTER_MAP.find((character) => character.linkName === name); 

  // sound component to do the *ding*
// import ding from "../music/ding.wav"
  // import sound from "react-sound"
// inside render will put <sound> object

  // TO DO: make Twitch screen fit the screen and customise controls
  return (
    <Fade in={true} timeout={500}>
      <Box className={classes.TwitchWrapper}>
        {/* Twitch Header */}
        {/* <div className="Twitch__toolbar"/> */}
        <div className="Twitch__video">
          <img className="Twitch__video--image" src="/images/bg_nadia_playground.jpg"/>
        </div>
        <div className="Twitch__gradient"/>
        <div className="Twitch__header">
          {/* <img 
            src='/images/profile_nadia.png'
            alt="Chat Profile"
            className="Twitch__header--profile"
          /> */}
          <div className="Twitch__header__description">
            <div className="Twitch__header__description--name">Chat</div>
            {/* <div className="Twitch__header__description--status">Online</div> */}
          </div>
        </div>
        
        
        <Box>
            <Box
              className={`Twitch__messages ${0 === 0 ? 'choices' : ''}`}
              dir="ltr">
              {/* <Box style={{textAlign:'center', paddingTop:5, fontSize:12}}> 1000hr </Box> */}
              <Box
                    //   key={step.text}
                      mx={1}
                      display="flex"
                      justifyContent="flex-end"
                    >
                      <Fade in='test' key='test' timeout={300}>
                        <Box
                          className={`Twitch__messages--receiver`}
                        //   borderRadius={5}
                        //   key={step.text}
                        >
                            <div class="Twitch__messages--receiver--message">
                            <span>
                                <img class="Twitch__messages--receiver--profile" src="/images/profile_aman.png"></img></span>
                            <span className="Twitch__messages--receiver--name" style={{color:'#19A3AD'}}>Aman: </span>
                            Hello world! Lorem ipsum sin amat dolores uluros.
                            </div>
                          {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                          {/* {setCurrentSpeaker(step.tags[0])} */}
                        </Box>
                      </Fade>
                      
                </Box>
                <Box
                    //   key={step.text}
                      mx={1}
                      display="flex"
                      justifyContent="flex-end"
                    >
                      <Fade in='test' key='test' timeout={300}>
                        <Box
                          className={`Twitch__messages--receiver`}
                        //   borderRadius={5}
                        //   key={step.text}
                        >
                            <div class="Twitch__messages--receiver--message">
                            <span>
                                <img class="Twitch__messages--receiver--profile" src="/images/profile_nadia.png"></img></span>
                            <span className="Twitch__messages--receiver--name">Nadia: </span>
                            Hello world! Lorem ipsum sin amat dolores uluros.
                            </div>
                          {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                          {/* {setCurrentSpeaker(step.tags[0])} */}
                        </Box>
                      </Fade>
                      
                </Box>
                <Box
                    //   key={step.text}
                      mx={1}
                      display="flex"
                      justifyContent="flex-end"
                    >
                      <Fade in='test' key='test' timeout={300}>
                        <Box
                          className={`Twitch__messages--receiver`}
                        //   borderRadius={5}
                        //   key={step.text}
                        >
                            <div class="Twitch__messages--receiver--message">
                            <span>
                                <img class="Twitch__messages--receiver--profile" src="/images/profile_nadia.png"></img></span>
                            <span className="Twitch__messages--receiver--name">Nadia: </span>
                            Hello world! Lorem ipsum sin amat dolores uluros.
                            </div>
                          {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                          {/* {setCurrentSpeaker(step.tags[0])} */}
                        </Box>
                      </Fade>
                      
                </Box>

                <Box
                    //   key={step.text}
                      mx={1}
                      display="flex"
                      justifyContent="flex-end"
                    >
                      <Fade in='test' key='test' timeout={300}>
                        <Box
                          className={`Twitch__messages--receiver`}
                        //   borderRadius={5}
                        //   key={step.text}
                        >
                            <div class="Twitch__messages--receiver--message">
                            <span>
                                <img class="Twitch__messages--receiver--profile" src="/images/profile_nadia.png"></img></span>
                            <span className="Twitch__messages--receiver--name">Nadia: </span>
                            Hello world! Lorem ipsum sin amat dolores uluros.
                            </div>
                          {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                          {/* {setCurrentSpeaker(step.tags[0])} */}
                        </Box>
                      </Fade>
                      
                </Box>

                <Box
                    //   key={step.text}
                      mx={1}
                      display="flex"
                      justifyContent="flex-end"
                    >
                      <Fade in='test' key='test' timeout={300}>
                        <Box
                          className={`Twitch__messages--receiver`}
                        //   borderRadius={5}
                        //   key={step.text}
                        >
                            <div class="Twitch__messages--receiver--message">
                            <span>
                                <img class="Twitch__messages--receiver--profile" src="/images/profile_nadia.png"></img></span>
                            <span className="Twitch__messages--receiver--name" style={{color:'#D12419'}}>Zhihao: </span>
                            Hello world! Lorem ipsum sin amat dolores uluros.
                            </div>
                          {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                          {/* {setCurrentSpeaker(step.tags[0])} */}
                        </Box>
                      </Fade>
                      
                </Box>

              <div ref={elementRef} />
            </Box>
            <Box className="Twitch__sendWrapper">
              <Box
                className={`Twitch__sendWrapper__sendButton ${
                  1 === 0 ? '' : 'choice'
                }`}
              >
                {1 === 0 ? "Tap to continue" : "Choose your reply"}
              </Box>
              <Box className="Twitch__sendWrapper__sendButton--purpleright">
                <ExpandMoreIcon />
              </Box>
            </Box>
            {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
            {0 === 0 ? (
              <Box
                className={`Twitch__choicesWrapper ${
                  1 === 0 ? 'no-choices' : 'w3-animate-fading'
                }`}
                // ref={choicesRef}
              >
                    <Box
                      className="choices"
                    //   onClick={() => setChoice(choice.index)}
                    //   key={i}
                    >
                      Test Choice
                    </Box>

                    <Box
                      className="choices"
                    //   onClick={() => setChoice(choice.index)}
                    //   key={i}
                    >
                      Test Choice
                    </Box>
              </Box>
            ) : (
              <NextButton getStory='' />
            )}
        </Box> 

      </Box>
    </Fade>
  )
}

export default Twitch
