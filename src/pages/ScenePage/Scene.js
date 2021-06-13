/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useRef } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import NextButton from "../../components/NextButton" 
import makeStyles from '@material-ui/core/styles/makeStyles'
import "./style.scss"

const useStyles = makeStyles((theme) => ({
  choiceWrapper: {
    position: 'relative',
    opacity: 0.8,    
    top: '450px',
  }
}))

const Scene = (props) => {
  const {
    currentParagraphs,
    getStory, 
    choices,
    setChoice,
    specialTags,
    globalVariables,
  } = props
  const classes = useStyles({ image: specialTags.background })

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


  return (
    <Fade in>
      <div className="ScenePage">

      <Box height="100%">
        <img src={`/images/${specialTags.background}`} className="ScenePage__background"/>
        <Box
          className="ScenePage__textWrapper"
        >
          {currentParagraphs.map((step) => {
            return (
              <Box my={2} key={step.text} style={{  scrollSnapAlign:'start' }}>
                <Fade in={step.text}>
                  <div>{step.text}</div>
                </Fade>
              </Box>
            )
          })}

         

          <div ref={elementRef} />
        </Box>
        {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
        {choices.length > 0 ? 
          <div  className={classes.choiceWrapper} >            
            {choices.map((choice) => (
              
              <Box
                  mx={1}
                  key={choice.text}
                  display="flex"
                  justifyContent="center"
                  my={1}
                
                >
                  <Fade in={choice.text}>
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
          <NextButton getStory={getStory}/>

        }
      </Box>
      
      </div>
        
    </Fade>
  )
}

export default Scene
