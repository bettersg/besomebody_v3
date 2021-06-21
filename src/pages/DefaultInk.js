import React from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import NextButton from "../components/NextButton" 


const DefaultInk = (props) => {
  const { currentParagraphs } = props
  const { getStory, choices, setChoice } = useInkContext()
  const step = currentParagraphs[currentParagraphs.length - 1]
  console.log(step)

  return (
    <Box className="DefaultInk">
      {currentParagraphs.length>0 ?
        <Box my={2}>
          <Fade in={step.text}>
            <Typography align="center" className="DefaultInk__text">{step.text}</Typography>
          </Fade>
        </Box>
        :
        null
      }

      {choices?.map((choice) => {
        return (
          <Box my={2} display="flex" justifyContent="center">
            <Fade in={choice.text}>
              <Button
                variant="contained"
                color="primary"
                size="small"
                onClick={() => setChoice(choice.index)}
              >
                {choice.text}
              </Button>
            </Fade>
          </Box>
        )
      })}
          <NextButton getStory={getStory}/>
    </Box>
  )
}

export default DefaultInk
