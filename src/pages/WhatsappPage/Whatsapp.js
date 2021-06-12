/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useMemo, useRef, useState } from 'react'
import { Box, Button, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import NextButton from "../../components/NextButton" 
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';

import "./style.scss"; 


const Whatsapp = (props) => {
    const {
        currentParagraphs,
        getStory, 
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
// TO DO: make whatsapp screen fit the screen and customise controls 
    return (
        
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
                <Box className={`text-area ${choices.length === 0 ? 'full' : ""}`} dir="ltr">
                    {currentParagraphs.map((step,i) => {
                        if (step.tags[0]?.includes('Speaker_self')) {
                            return (
                            <Box
                                key={step.text}
                                my={2}
                                mx={1}
                                display="flex"
                                justifyContent="flex-end"
                            >
                                <Fade in={step.text}  key={i}>
                                    <Box
                                        className="chatbox-sender"
                                        borderRadius={5}
                                        p={1}
                                        key={i}
                                    >
                                        <Typography  key={i}>{step.text}</Typography>
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
                                <Typography  key={i}>{step.text}</Typography>
                                </Box>
                            </Box>
                            )
                        }
                    })}
                    <div ref={elementRef} />
                </Box>

                <Box className="send-wrapper">
                    <Box className={`send-wrapper__send-button ${choices.length === 0 ? '' : "choice"}`}>
                        Choose your reply...
                    </Box>
                    <Box className="send-button-right">
                        <ExpandMoreIcon />
                    </Box>
                </Box>
                {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
                {choices.length > 0 ? 
                    <Box className={`choices-wrapper ${choices.length === 0 ? 'no-choices' : "w3-animate-fading"}`}>
                        {choices.map((choice,i) => {
                            return (
                                <Box 
                                    className="choices"
                                    onClick={() => setChoice(choice.index)}
                                    key={i}
                                >
                                    {choice.text}
                                </Box>
                            )
                        })}
                    </Box>
                    :
                    <NextButton getStory={getStory}/>
                }
            </Box>
        </Fade>

    )
}

export default Whatsapp; 