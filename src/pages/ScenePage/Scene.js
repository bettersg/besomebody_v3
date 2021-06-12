/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useRef } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import NextButton from "../../components/NextButton" 
import makeStyles from '@material-ui/core/styles/makeStyles'

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: ({ image }) => `url('/images/${image}')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '640px',
    bottom: 0, 
  },
  textWrapper: {
    background: theme.palette.grey[100],
    opacity: 0.9,
    position: 'relative',
    top: '400px',
    height: '100px',
    scrollSnapType: 'y mandatory',
  },
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
      <div>

      <Box className={classes.paragraphWrapper}  height="100%">
        <Box
          className={classes.textWrapper}
          p={1}
          height={300}
          overflow="scroll"
        >
          {currentParagraphs.map((step) => {
            return (
              <Box my={1} key={step.text} style={{  scrollSnapAlign:'start' }}>
                <Fade in={step.text}>
                  <Typography>{step.text}</Typography>
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
