import React, { useEffect, useRef, useState } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: ({ image }) => `url('/gameAssets/${image}')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  },
  textWrapper: {
    background: theme.palette.grey[100],
    opacity: 0.9,
  },
}))

const School = (props) => {
  const { paragraphs, choices, setChoice, specialTags } = props

  const classes = useStyles({ image: specialTags.background })
  const elementRef = useRef()

  const [currentParagraphs, setCurrentParagraphs] = useState([...paragraphs])

  // Help to scroll to bottom of the paragraphs render screen
  useEffect(() => {
    if (elementRef.current) {
      elementRef.current.scrollIntoView({
        behavior: 'smooth',
      })
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [elementRef, currentParagraphs, choices])

  // Filter out paragraphs based on the current UI variable
  useEffect(() => {
    const nextParagraphs = paragraphs.filter(
      (paragraph) =>
        !Boolean(paragraph.tags.find((tag) => tag.includes('Speaker')))
    )

    return setCurrentParagraphs([...nextParagraphs])

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [paragraphs])

  return (
    <Fade in>
      <Box className={classes.paragraphWrapper} p={3}>
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

          <div ref={elementRef} />
        </Box>
      </Box>
    </Fade>
  )
}

export default School
