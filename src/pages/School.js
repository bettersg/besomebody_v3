/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useMemo, useRef, useState } from 'react'
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
  const { paragraphs, choices, setChoice, specialTags, globalVariables } = props
  const classes = useStyles({ image: specialTags.background })

  // ==========================================
  // Get paragraphs belonging to this UI
  // ==========================================
  const [currentParagraphs, setCurrentParagraphs] = useState([])

  // Get the splice index when this component renders for the first time
  const paragraphSpliceIndex = useMemo(() => paragraphs.length - 1, [])

  // Eveytime paragraphs gets updated, only retrieve paragraphs starting from the paragraphSpliceIndex
  useEffect(() => {
    const nextParagraphs = [...paragraphs]
    nextParagraphs.splice(0, paragraphSpliceIndex)

    return setCurrentParagraphs([...nextParagraphs])
  }, [paragraphs])

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
