/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useMemo, useRef, useState } from 'react'
import { Box, Button, Fade, Grid, Typography } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

import FiberManualRecordIcon from '@material-ui/icons/FiberManualRecord';
import MicNoneIcon from '@material-ui/icons/MicNone';
import "./style.scss"; 

const data = {
    content : {
            chatgrpImg: "Gavin_profile.jpg",
            chatgroupTitle: "Gavin", 
    }, 
    chat: [
        {
            him: true, 
            text: "Gav are you there? I really need to talk."
        }, 
        {
            him: false, 
            text: "Bae, what's up? I just got home and was going to watch some Netflix. You ok?"
        }, 
        {
            him: true, 
            text: "Gav are you there? I really need to talk."
        }, 
        {
            him: false, 
            text: "Bae, what's up? I just got home and was going to watch some Netflix. You ok?"
        }, 
        {
            him: true, 
            text: "Gav are you there? I really need to talk."
        }, 
        {
            him: false, 
            text: "Bae, what's up? I just got home and was going to watch some Netflix. You ok?"
        }, 
        {
            him: true, 
            text: "Gav are you there? I really need to talk."
        }, 
        {
            him: false, 
            text: "Bae, what's up? I just got home and was going to watch some Netflix. You ok?"
        }, 
    ], 
    characterChoice: [
        {
            text: "Excepteur sint occaecat cupidatat non proident, deserunt mollit anim id est eopksio "
        }, 
        {
            text: "Bae, what's up? I just got home and was going to watch some Netflix. You ok?"
        }, 
        {
            text: "Gav are you there? I really need to talk."
        }, 
        {
            text: "Gav are you there? I really need to talk."
        }
    ]
    
    
}

const Whatsapp = (props) => {
    const { paragraphs, choices, setChoice, specialTags, globalVariables } = props; 

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
        // TO DO: make whatsapp screen fit the screen and customise controls 
        <Fade in>

            <Box className="paragraph-wrapper" pb={3}>
                <Box className="whatsapp-header" p={1} mb={3}>
                    <Grid container alignItems="center">
                    <Grid item xs={2}>
                        <Box className="whatsapp-box">
                            <img
                                src={`/gameAssets/${specialTags.chatgroupImage}`}
                                alt="Chat Profile"
                            />
                        </Box>
                    </Grid>
            
                    <Grid item xs={8}>
                        <Typography color="inherit" variant="h6" className="chat-name">
                            {specialTags.chatgroupTitle}
                        </Typography>
                        <Typography color="inherit" variant="subtitle2">
                            online
                        </Typography>
                    </Grid>
            
                    <Grid item xs={2} />
                    </Grid>
                </Box> 
            
                <Box maxHeight={300} className="text-area">
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
                <Box className="choices-wrapper">
                    <p className="choices-title">What should (Character) say?</p>
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

                    <Box className="send-wrapper">
                        <FiberManualRecordIcon/>
                        <Box className="send-button">
                            Send
                        </Box>
                        <img src="gameAssets/wa-sticker.png" className="wa-sticker"></img>
                        <MicNoneIcon/>
                    </Box>
                </Box>
            </Box>
        </Fade>

    )
}

export default Whatsapp; 