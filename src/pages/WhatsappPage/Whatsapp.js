/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useMemo, useRef, useState } from 'react'
import { Box, Button, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';

import "./style.scss"; 


const Whatsapp = (props) => {
    const {
        currentParagraphs,
        choices,
        setChoice,
        specialTags,
        globalVariables,
      } = props
      
    
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
        // TO DO: make whatsapp screen fit the screen and customise controls 
        <Fade in>

            <Box className="paragraph-wrapper" pb={3}>
                <Box className="whatsapp-header" p={1} mb={3}>
                    <Grid container alignItems="center">
                    <Grid item xs={2}>
                        <Box className="whatsapp-box">
                            <img
                                src={`/images/${specialTags.chatgroupImage}`}
                                alt="Chat Profile"
                                className="profile-img"
                            />
                        </Box>
                    </Grid>
            
                    <Grid item xs={8}>
                        <Typography color="inherit" variant="h6" className="chat-name">
                            {specialTags.chatgroupTitle}
                        </Typography>
                        <Typography color="inherit" variant="subtitle2" className="online-status">
                            online
                        </Typography>
                    </Grid>
            
                    <Grid item xs={2} />
                    </Grid>
                </Box> 
                <Box className={`text-area ${choices.length === 0 ? 'full' : ""}`}>
                    {currentParagraphs.map((step) => {
                    if (step.tags[0]?.includes('Speaker_self')) {  // to lowercase this so that writer capitalisation doesn't matter
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
                                    className="chatbox-sender"
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
                            <Box
                                className="chatbox-receiver"
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

                <Box className="send-wrapper">
                    <Box className={`send-button ${choices.length === 0 ? '' : "choice"}`}>
                        Choose your reply...
                    </Box>
                    <Box className="send-button-right">
                        <ExpandMoreIcon />
                    </Box>
                </Box>
                <Box className={`choices-wrapper ${choices.length === 0 ? 'no-choices' : ""}`}>
                    {/* <p className="choices-title">What should (Character) say?</p> */}
                    {choices.map((choice) => {
                        return (
                            <Box 
                                className="choices"
                                onClick={() => setChoice(choice.index)}
                            >
                                {choice.text}
                            </Box>
                        )
                    })}
                </Box>
            </Box>
        </Fade>

    )
}

export default Whatsapp; 