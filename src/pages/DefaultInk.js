import React from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import NextButton from '../components/NextButton'
import { useInkContext } from '../contexts/InkContext'

const DefaultInk = (props) => {
  const { currentParagraphs } = props
  const { getStory, choices, setChoice } = useInkContext()
  return (
    <Box>
      {currentParagraphs?.map((paragraph) => {
        return (
          <Box my={2}>
            <Fade in={paragraph.text}>
              <Typography align="center">{paragraph.text}</Typography>
            </Fade>
          </Box>
        )
      })}

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
      <NextButton getStory={getStory} 
              // style={{display:"none"}}

      />
    </Box>
  )
}

export default DefaultInk
