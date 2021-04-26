import React from 'react'
import PropTypes from 'prop-types'
import { Box, Grid, Typography } from '@material-ui/core'
import Fade from '@material-ui/core/Fade'
import makeStyles from '@material-ui/core/styles/makeStyles'

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
  const { paragraphs, variables, setParagraphs } = props

  const classes = useStyles({ image: variables.background })

  const elementRef = React.useRef()

  React.useEffect(() => {
    if (elementRef.current) {
      elementRef.current.scrollIntoView({
        behavior: 'smooth',
      })
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [elementRef, paragraphs])

  React.useEffect(() => {
    const lastText = paragraphs[paragraphs.length - 1]
    if (lastText) {
      setParagraphs([lastText])
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [variables.ui])


  return (
    <>
      {variables.ui === 'school' && (
        <Fade in={variables.ui === 'school'}>
          <Box className={classes.paragraphWrapper} p={3}>
            <Box
              className={classes.textWrapper}
              p={3}
              height={300}
              overflow="scroll"
            >
              {paragraphs.map((step) => {
                return (
                  <Box my={1}>
                    <Typography>{step.text}</Typography>
                  </Box>
                )
              })}
              <div ref={elementRef} />
            </Box>
          </Box>
        </Fade>
      )}

      {variables.ui === 'whatsapp' && (
        <Fade in={variables.ui === 'whatsapp'}>
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
                      src={`gameAssets/${variables.chatgroupImage}`}
                      alt="Chat Profile"
                    />
                  </Box>
                </Grid>

                <Grid item xs={8}>
                  <Typography color="inherit" variant="h4">
                    {variables.chatgroupTitle}
                  </Typography>
                  <Typography color="inherit" variant="subtitle1">
                    online
                  </Typography>
                </Grid>

                <Grid item xs={2} />
              </Grid>
            </Box>

            <Box maxHeight={300} overflow="scroll">
              {paragraphs.map((step) => {
                if (step.tags[0]?.includes('Speaker_self')) {
                  return (
                    <Box my={2} mx={1} display="flex" justifyContent="flex-end">
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
                    <Box my={2} mx={1} display="flex">
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
  variables: PropTypes.object,
  setParagraphs: PropTypes.func,
}

export default InkParagraphs
