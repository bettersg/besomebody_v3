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
// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const Twitch = (props) => {
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
    TwitchWrapper: {
      backgroundImage: `url('/images/bg_ui_Twitch.png')`,
      backgroundSize: "cover", 
      height: '660px',
      [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
      },
      width: "100%", 
      // overflow: "hidden", 
    },
    TwitchImage: {
      maxWidth: 150,
      maxHeight: 150,
    }
    // TwitchMsgs: {
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

  // TO DO: make Twitch screen fit the screen and customise controls
  return (
    <Fade in={true} timeout={500}>        
        <Box className={classes.TwitchWrapper}>
          {/* Twitch Header */}
          {/* <div className="Twitch__toolbar"/> */}
          <div className="Twitch__video">
            <img className="Twitch__video--image" src={`/images/${specialTags.chat_group_image}`}/>
          </div>
          <div className="Twitch__gradient"/>
          <div className="Twitch__header">
            {/* <img 
              src='/images/profile_nadia.png'
              alt="Chat Profile"
              className="Twitch__header--profile"
            /> */}
            <div className="Twitch__header__description">
              <div className="Twitch__header__description--name">{specialTags.chat_group_title}</div>
              {/* <div className="Twitch__header__description--status">Online</div> */}
            </div>
          </div>

        
        <Box>
            <Box
              className={`Twitch__messages ${choices.length > 0 ? 'choices' : ''}`}
              dir="ltr">
              {specialTags.timestamp ? <Box style={{textAlign:'center', paddingTop:5, fontSize:12}}> {specialTags.timestamp}hr </Box>: null}
              {currentParagraphs.map((step, i) => {
                if (step.tags[0]?.includes('speaker_self')) {
                  if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                  return (
                    <Box
                      key={step.text}
                      mx={1}
                      display="flex"
                      // justifyContent="flex-end"
                    >
                      <Fade in='test' key='test' timeout={300}>
                        <Box
                          className={`Twitch__messages--receiver`}
                        //   borderRadius={5}
                          key={step.text}
                        >
                            <div class="Twitch__messages--receiver--message">
                            <span>
                                <img class="Twitch__messages--receiver--profile" src={'/images/ico_' + name +'.png'}></img></span>
                            <span className="Twitch__messages--receiver--name" style={{color:'#19A3AD'}}>{'@'+specialTags.speaker_self_name} </span>
                            {step.text}
                            </div>
                          {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                          {/* {setCurrentSpeaker(step.tags[0])} */}
                        </Box>
                      </Fade>
                      
                    </Box>
                    
                    
                    // <Box
                    //   key={step.text}
                    //   mx={1}
                    //   display="flex"
                    //   justifyContent="flex-end"
                    // >
                    //   <Fade in={step.text} key={step.text} timeout={300}>
                    //     <Box
                    //       className={`Twitch__messages--sender ${isNotPrevSpeaker(step.tags[0])?"newSpeaker":""}`}
                    //       borderRadius={5}
                    //       key={step.text}
                    //     >
                    //       {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{'@'+specialTags.speaker_self_name+' : '+step.text}</Typography> )}
                    //       {setCurrentSpeaker(step.tags[0])}
                    //     </Box>
                    //   </Fade>
                    // </Box>
                  ) 
                } else if (step.tags[0]?.includes('speaker')) {     // this is needed to avoid rendering inner_monologue                  
                  if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                  return (
                    <Fade in={step.text} timeout={300}>
                        <Box
                          key={step.text}
                          mx={1}
                          display="flex"
                          // justifyContent="flex-end"
                        >
                          
                            <Box
                              className={`Twitch__messages--receiver`}
                            //   borderRadius={5}
                              key={step.text}
                            >
                                <div class="Twitch__messages--receiver--message">
                                  {/* <span>                                  
                                    {(step.tags[0]?.includes('speaker_1') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_1_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_2') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_2_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_3') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_3_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_4') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_4_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_5') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_5_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_6') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_6_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_7') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_7_name} ></img> : null)}
                                    {(step.tags[0]?.includes('speaker_8') ? <img class="Twitch__messages--receiver--profile" alt="O" src={"/images/" + specialTags.speaker_8_name} ></img> : null)}
                                  
                                  </span> */}
                                  {/* <Avatar>
                                    {(step.tags[0]?.includes('speaker_1') ? (specialTags.speaker_1_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_2') ? (specialTags.speaker_2_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_3') ? (specialTags.speaker_3_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_4') ? (specialTags.speaker_4_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_5') ? (specialTags.speaker_5_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_6') ? (specialTags.speaker_6_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_7') ? (specialTags.speaker_7_name).charAt(0) : null)}
                                    {(step.tags[0]?.includes('speaker_8') ? (specialTags.speaker_8_name).charAt(0) : null)}
                                  </Avatar>  */}
                                <span className="Twitch__messages--receiver--name">
                                {(step.tags[0]?.includes('speaker_1') ? '@' + specialTags.speaker_1_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_2') ? '@' + specialTags.speaker_2_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_3') ? '@' + specialTags.speaker_3_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_4') ? '@' + specialTags.speaker_4_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_5') ? '@' + specialTags.speaker_5_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_6') ? '@' + specialTags.speaker_6_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_7') ? '@' + specialTags.speaker_7_name + ' : ': null)}
                                {(step.tags[0]?.includes('speaker_8') ? '@' + specialTags.speaker_8_name + ' : ': null)} </span>
                                {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <span>{step.text}</span> )}
                                </div>
                              {/* {(step.tags[1]?.includes('image') ?  <img src={'/images/'+ step.text} alt={step.text} className={classes.TwitchImage} /> :  <Typography key={step.text}>{step.text}</Typography> )} */}
                              {/* {setCurrentSpeaker(step.tags[0])} */}
                            </Box>
                         
                        </Box>
                      
                      {/* <div key={step.text} className={`Twitch__messages--receiver ${isNotPrevSpeaker(step.tags[0])?"newSpeaker":""}`} 
                        style={{}}
                      >
                        <div className="Twitch__messages--receiver--name"
                            style={{color:persona.primaryColour,textTransform:"capitalize", display:isNotPrevSpeaker(step.tags[0])?"block":"none"}}>
                          {(step.tags[0]?.includes('speaker_1') ? '@'+specialTags.speaker_1_name : null)}
                          {(step.tags[0]?.includes('speaker_2') ? '@'+specialTags.speaker_2_name : null)}
                          {(step.tags[0]?.includes('speaker_3') ? '@'+specialTags.speaker_3_name : null)}
                          {(step.tags[0]?.includes('speaker_4') ? '@'+specialTags.speaker_4_name : null)}
                        </div>
                        {setCurrentSpeaker(step.tags[0])}
                        {/* <div>{step.text}</div> 
                       
                       

                      </div> */}
                    </Fade>
                  )
                } else if (step.tags[0]?.includes('clear')) {     // this is needed to avoid rendering inner_monologue
                  if (innerMonoRef.current) { innerMonoRef.current.hidden = 'true' }
                      return (null)
                } else if (step.tags[0]?.includes('inner_monologue')) {                
                  return (
                    <div className="Twitch__innerMono" ref={innerMonoRef}> <Typography key={step.text}  className="Twitch__innerMono--text"> {step.text}</Typography> </div>
                    )
                }
              
              })}
              <div ref={elementRef} />
            </Box>
            <Box className="Twitch__sendWrapper">
              <Box
                className={`Twitch__sendWrapper__sendButton ${
                  choices.length === 0 ? '' : 'choice'
                }`}
              >
                Continue...
              </Box>
              <Box className="Twitch__sendWrapper__sendButton--right">
                <ExpandMoreIcon />
              </Box>
            </Box>
            {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
            {choices.length > 0 ? (
              <Box
                className={`Twitch__choicesWrapper ${
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

      </Box>
    </Fade>
  )
}

export default Twitch
