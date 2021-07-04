/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useRef } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

import "./style.scss"

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: ({ image }) => `url('/images/${image}')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: "100%", 
  },
  textWrapper: {
    background: theme.palette.grey[100],
    opacity: 0.9,
    height: '100%',
  },
}))

const School = (props) => {
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

  // console.log(choices)

  return (
    <Fade in>
      <div className="schoolWrapper">
        <Box className={classes.paragraphWrapper} p={3} height="100%">
          <Box
            className={classes.textWrapper}
            p={3}
            height={300}
            overflow="scroll"
          >
            {currentParagraphs.map((step) => {
              return (
                <Box my={1} key={step.text}>
                  <Fade in={step.text}>
                    <Typography>{step.text}</Typography>
                  </Fade>
                </Box>
              )
            })}

            {choices.map((choice) => (
              <Box
                mx={1}
                key={choice.text}
                display="flex"
                justifyContent="center"
                my={2}
              >
                <Fade in={choice.text}>
                  {
                    choice.text === "..." ? 
                      
                        <Button
                          variant="contained"
                          color="primary"
                          onClick={() => setChoice(choice.index)}
                          className="next-button"
                        >
                          <Typography variant="caption">next</Typography>
                          {/* {console.log("choices")}
                          {console.log(choice.length==0)} */}
                        </Button>
                      : 
                      <Button
                          variant="contained"
                          color="primary"
                          onClick={() => setChoice(choice.index)}
                          className="next-button"
                        >
                          <Typography variant="caption">{choice.text}</Typography>
                          {/* {console.log("choices")}
                          {console.log(choice.length==0)} */}
                        </Button>
                  }
                </Fade>
              </Box>
            ))}

            <div ref={elementRef} />
          </Box>
        </Box>
      </div>
    </Fade>
  )
}

export default School
