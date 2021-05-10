import React, { useEffect, useRef, useState } from 'react'
import PropTypes from 'prop-types'
import { Box, Grid, Typography } from '@material-ui/core'
import Fade from '@material-ui/core/Fade'
import makeStyles from '@material-ui/core/styles/makeStyles'
import Whatsapp from "../Whatsapp/Whatsapp"

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: ({ image }) => `url('gameAssets/${image}')`,
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
        <Fade in={specialTags.ui === 'whatsapp'}> 
          <Whatsapp content={specialTags} currentPara={currentParagraphs} eleRef={elementRef}/>
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
