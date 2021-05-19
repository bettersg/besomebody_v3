/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useMemo, useRef, useState } from 'react'
import { Box, Button, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: ({ image }) => `url('/images/${image}')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  },
  whatsappHeader: {
    background: '#045E54',
    color: theme.palette.common.white,
  },
  chatboxSender: {
    background: '#E1FFC7',
  },
  chatboxReceiver: {
    background: theme.palette.common.white,
  },
}))

const WhatsApp = (props) => {
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
      <Box className={classes.paragraphWrapper} pb={3}>
        <Box className={classes.whatsappHeader} p={1} mb={3}>
          <Grid container alignItems="center">
            <Grid item xs={2}>
              <Box
                height={100}
                width={100}
                borderRadius="50%"
                overflow="hidden"
              >
                <img
                  width="100%"
                  height="100%"
                  src={`/images/${specialTags.chatgroupImage}`}
                  alt="Chat Profile"
                />
              </Box>
            </Grid>

            <Grid item xs={8}>
              <Typography color="inherit" variant="h4">
                {specialTags.chatgroupTitle}
              </Typography>
              <Typography color="inherit" variant="subtitle1">
                online
              </Typography>
            </Grid>

            <Grid item xs={2} />
          </Grid>
        </Box>

        <Box maxHeight={300} overflow="scroll">
          {currentParagraphs.map((step) => {
            if (step.tags[0]?.includes('Speaker_self')) {
              return (
                <Box
                  key={step.text}
                  my={2}
                  mx={1}
                  display="flex"
                  justifyContent="flex-end"
                >
                  <Fade in={step.text}>
                    <Box
                      className={classes.chatboxSender}
                      borderRadius={5}
                      p={1}
                    >
                      <Typography>{step.text}</Typography>
                    </Box>
                  </Fade>
                </Box>
              )
            } else {
              return (
                <Box key={step.text} my={2} mx={1} display="flex">
                  <Fade in={step.text}>
                    <Box
                      className={classes.chatboxReceiver}
                      borderRadius={5}
                      p={1}
                    >
                      <Typography>{step.text}</Typography>
                    </Box>
                  </Fade>
                </Box>
              )
            }
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

export default WhatsApp
