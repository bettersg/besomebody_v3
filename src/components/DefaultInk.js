import React from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'

const DefaultInk = (props) => {
  const { paragraphs, choices, setChoice, specialTags } = props
  return (
    <Box>
      {paragraphs?.map((paragraph) => {
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
    </Box>
  )
}

export default DefaultInk
