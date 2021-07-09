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
    height: '640px',
    bottom: 0, 
  },
  choiceWrapper: {
    position: 'relative',
    opacity: 0.8,    
    top: '400px',
  }
}))

const Scene = (props) => {
  const { currentParagraphs } = props
  const { getStory, choices, setChoice, specialTags } = useInkContext()
  const classes = useStyles({ image: specialTags.background })
  const { name } = useParams()
  const persona = CHARACTER_MAP.find((character) => character.linkName === name); 

  
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
                  className={`ScenePage__story ${step.tags[0]==='inner_monologue'?"innerMonologue":"default"}`}

                >
                  <div 
                    className={`${step.tags[0] !== "speaker_left" && step.tags[0] !== 'speaker_right' && step.tags[0]!=='speaker_self' ? "ScenePage__noName" : "ScenePage__name"}`}
                    style={{backgroundColor:persona.primaryColour}}
                  >
                    {step.tags[0] === 'speaker_left' ? specialTags.speaker_left_name : null}
                    {step.tags[0] === 'speaker_right' ? specialTags.speaker_right_name : null}
                    {step.tags[0]==='speaker_self'? name:null}
                    {/* {step.tags[0]==='inner_monologue'? 'Inner Monologue':null} */}
                  </div>
                  <Fade in={step.text}  timeout={500}>
                      <div className="ScenePage__story__text">{step.text}</div>
                    </Fade>
                </div>

              </div>
              )
            }            

          <div ref={elementRef} />
        {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
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
      </Box>
      
      </div>
        
    </Fade>
  )
}

export default Scene
