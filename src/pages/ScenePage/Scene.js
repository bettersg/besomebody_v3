/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useRef } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import NextButton from "../../components/NextButton" 
import makeStyles from '@material-ui/core/styles/makeStyles'
import { useInkContext } from '../../contexts/InkContext'
import { useParams } from 'react-router-dom'
import "./style.scss"

import { CHARACTER_MAP } from '../../models/storyMap';


const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: ({ image }) => `url('/images/${image}')`, 
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    backgroundColor: "white", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: '100vh',
    },
    bottom: 0, 
  },
  choiceWrapper: {
    position: 'relative',
    opacity: 0.8,    
    top: '400px',
  }, 
  choicesButton: {
    width: "330px", 
    height: "48px", 
    margin: "auto", 
    borderRadius: "24px", 
    border: "solid 1px #3DCAD328", 
    backgroundColor: "white", 
    color: "#0B6E7D", 
    marginBottom: "12px", 
    '&:hover': {
      backgroundColor: '#B1EAEE',
      borderColor: '#B1EAEE',
      boxShadow: 'none',
    },
  },
}))

const Scene = (props) => {
  const { currentParagraphs } = props
  const { getStory, choices, setChoice, specialTags } = useInkContext()
  const classes = useStyles({ image: specialTags.background })
  const { name } = useParams()
  const persona = CHARACTER_MAP.find((character) => character.linkName === name); 

  // functions 

  function displayTextWidth(text, font) {
    let canvas = displayTextWidth.canvas || (displayTextWidth.canvas = document.createElement("canvas"));
    let context = canvas.getContext("2d");
    context.font = font;
    let metrics = context.measureText(text);
    return metrics.width+32;
  }

  function checkSpeakerInCurrentParagraphs () {
    var allChar = []
    currentParagraphs.map(content => {
      if (!allChar.includes(content.tags[0])) {
        allChar.push(content.tags[0])
      }
    }) 
    return (allChar)
    // console.log(allChar)
  }
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

  if (currentParagraphs.length < 1) {
    getStory();
  }
   
  const step = currentParagraphs[currentParagraphs.length - 1]

  return (
    <Fade  in={true} timeout={500}>
      <div className="ScenePage">
        <div className="ScenePage__nonSpeaker">
          {checkSpeakerInCurrentParagraphs().includes('speaker_left')  ? <img src={"/images/" + specialTags.speaker_left_image} className="ScenePage__speaker--left nonSpeaker"/> : null}
          {checkSpeakerInCurrentParagraphs().includes('speaker_right') ? <img src={"/images/" + specialTags.speaker_right_image} className="ScenePage__speaker--right nonSpeaker"/> : null}
        </div>
        <div className="ScenePage__speaker">
          {step.tags[0] === 'speaker_left' ? <img src={"/images/" + specialTags.speaker_left_image} className="ScenePage__speaker--left"/> : null}
          {step.tags[0] === 'speaker_right' ? <img src={"/images/" + specialTags.speaker_right_image} className="ScenePage__speaker--right"/> : null}
          
        </div>
      <Box className={classes.paragraphWrapper}  height="100%">
        <div
          overflow="scroll"

          >
            {step && (
              <div>
                <div  
                  // my={1} 
                  key={step.text} 
                  style={{ scrollSnapAlign: 'start' }}
                  className={`ScenePage__story`}

                >
                  {/* <div className="ScenePage__nameWrapper"> */}
                    <div 
                      className={`
                        ${(step.tags[0] === "speaker_left" && specialTags.speaker_left_name) || 
                          (step.tags[0] === 'speaker_right' && specialTags.speaker_right_name) || 
                          step.tags[0]==='speaker_self' ? "ScenePage__name" : "ScenePage__noName"}`}
                      style={{
                        backgroundColor:persona.primaryColour, 
                        width: displayTextWidth(step.tags[0] === "speaker_left"?specialTags.speaker_left_name :
                              step.tags[0] === 'speaker_right'?specialTags.speaker_right_name :
                              step.tags[0]==='speaker_self'?name : "", "bold 22px Inter"),
                        float: step.tags[0] === 'speaker_right'?"right":null, 
                        top: step.tags[0] === 'speaker_right'?"-20px":null, 
                        bottom: step.tags[0] === 'speaker_right'?null:"-20px", 
                      }}
                    >
                      {/* {console.log(currentParagraphs)} */}
                      {step.tags[0] === 'speaker_left' ? specialTags.speaker_left_name : null}
                      {step.tags[0] === 'speaker_right' ? specialTags.speaker_right_name : null}
                      {step.tags[0]==='speaker_self'? name:null}
                    </div>


                  {/* </div> */}
                  {/* <Fade in={step.text}  timeout={500}> */}
                  {/* <Fade in> */}
                    <div>
                      {/* this is gradient div for inner monologue */}
                      <div 
                        className={step.tags[0]==='inner_monologue'?"ScenePage__story__innerMono":null}
                        style={{background: `linear-gradient(180deg, rgba(79, 77, 190, 0) 13.02%, ${persona.primaryColour} 100%)`}}
                      ></div>
                      <div 
                        className={`ScenePage__story__text ${step.tags[0]==='inner_monologue'?"innerMonologue":"default"}`}
                        style={{background: step.tags[0]==='inner_monologue'?`linear-gradient(180deg, ${persona.primaryColour} 44.7%, ${persona.primaryColour} 100%)`:"white"}}
                      >
                        <div style={{marginLeft:"24px"}}>{step.tags[0]==='inner_monologue'? 'INNER MONOLOGUE':null}</div>
                        <div className="ScenePage__story__text--line">{step.text}</div>


                        {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
                        <div 
                          style={{
                            backgroundColor:`${step.tags[0]==='inner_monologue'?persona.primaryColour:"white"}`, 
                            // background: `${step.tags[0]!=='inner_monologue'?"background: linear-gradient(180deg, #B1EAEE 0%, #D1D3DD 100%)":null}`, 
                            background: "linear-gradient(180deg, rgba(177, 234, 238, 0), rgba(177, 234, 238, 50%), #D1D3DD", 
                            paddingTop: `${choices.length > 0?"62px":null}`,
                            // background: `${step.tags[0]!=='inner_monologue'?"linear-gradient(180deg, rgba(177, 234, 238, 0) 0%, #D1D3DD 100%);":null}`
                          }}
                        >
                          {choices.length > 0 ? 
                            <div  className="ScenePage__choicesWrapper" >            
                              {choices.map((choice) => (
                                
                                <Box
                                    key={choice.text}
                                    className="ScenePage__choicesWrapper__choices"
                                  >
                                    <Fade in={choice.text}  timeout={800}>
                                      <Button
                                        variant="contained"
                                        color="primary"
                                        onClick={() => setChoice(choice.index)}
                                        className={classes.choicesButton}
                                      >
                                        <Typography variant="caption">{choice.text}</Typography>
                                      </Button>
                                    </Fade>
                                  </Box>
                                  
                              ))}
                            </div>
                            : 
                            <NextButton getStory={getStory} />

                          }

                        </div>
                      </div>
                      
                    </div>
                    {/* </Fade> */}

                    {/* this if else is needed to toggle between "Next Button" and choices (if any)
                    <div 
                      style={{
                        backgroundColor:`${step.tags[0]==='inner_monologue'?persona.primaryColour:"white"}`, 
                        background: `${step.tags[0]!=='inner_monologue'?"linear-gradient(180deg, rgba(177, 234, 238, 0) 0%, #D1D3DD 100%)":null}`, 
                        paddingTop: `${choices.length > 0?"62px":null}`,
                        // background: `${step.tags[0]!=='inner_monologue'?"linear-gradient(180deg, rgba(177, 234, 238, 0) 0%, #D1D3DD 100%);":null}`
                      }}
                    >
                      {choices.length > 0 ? 
                        <div  className="ScenePage__choicesWrapper" >            
                          {choices.map((choice) => (
                            
                            <Box
                                key={choice.text}
                                className="ScenePage__choicesWrapper__choices"
                              >
                                <Fade in={choice.text}  timeout={800}>
                                  <Button
                                    variant="contained"
                                    color="primary"
                                    onClick={() => setChoice(choice.index)}
                                    className={classes.choicesButton}
                                  >
                                    <Typography variant="caption">{choice.text}</Typography>
                                  </Button>
                                </Fade>
                              </Box>
                              
                          ))}
                        </div>
                        : 
                        <NextButton getStory={getStory} />

                      }

                    </div> */}
                </div>



              </div>
              )
            }            

          <div ref={elementRef} />
        
        </div>
      </Box>
      
      </div>
        
    </Fade>
  )
}

export default Scene
