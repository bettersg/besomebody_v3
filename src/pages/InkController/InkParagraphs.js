import React, { useEffect, useRef, useState } from 'react'
import PropTypes from 'prop-types'
import { Box, Grid, Typography } from '@material-ui/core'
import Fade from '@material-ui/core/Fade'
import makeStyles from '@material-ui/core/styles/makeStyles'
// import Whatsapp from "../WhatsApp"

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

const InkParagraphs = (props) => {
  const { paragraphs, specialTags } = props

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
  }, [elementRef, currentParagraphs])

  // Filter out paragraphs based on the current UI variable
  useEffect(() => {
    switch (specialTags.ui) {
      case 'whatsapp': {
        const nextParagraphs = paragraphs.filter((paragraph) =>
          paragraph.tags.find((tag) => tag.includes('Speaker'))
        )

        return setCurrentParagraphs([...nextParagraphs])
      }
      case 'school': {
        const nextParagraphs = paragraphs.filter(
          (paragraph) =>
            !Boolean(paragraph.tags.find((tag) => tag.includes('Speaker')))
        )

        return setCurrentParagraphs([...nextParagraphs])
      }
      default:
        return
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [specialTags.ui, paragraphs])

  return (
    <>
      {specialTags.ui === 'school' && (
        <Fade in={specialTags.ui === 'school'}>
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
                    <Typography>{step.text}</Typography>
                  </Box>
                )
              })}
              <div ref={elementRef} />
            </Box>
          </Box>
        </Fade>
      )}

      {specialTags.ui === 'whatsapp' && (
        // <Fade in={specialTags.ui === 'whatsapp'}> 
          // {/* <Whatsapp content={specialTags} currentPara={currentParagraphs} eleRef={elementRef}/> */}
        <Fade in={specialTags.ui === 'whatsapp'}>
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
                      src={`/gameAssets/${specialTags.chatgroupImage}`}
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
                      <Box
                        className={classes.chatboxSender}
                        borderRadius={5}
                        p={1}
                      >
                        <Typography>{step.text}</Typography>
                      </Box>
                    </Box>
                  )
                } else {
                  return (
                    <Box key={step.text} my={2} mx={1} display="flex">
                      <Box
                        className={classes.chatboxReceiver}
                        borderRadius={5}
                        p={1}
                      >
                        <Typography>{step.text}</Typography>
                      </Box>
                    </Box>
                  )
                }
              })}
              <div ref={elementRef} />
            </Box>
          </Box>
        </Fade>
      )}
    </>
  )
}

InkParagraphs.propTypes = {
  paragraphs: PropTypes.array,
  specialTags: PropTypes.object,
}

export default InkParagraphs
