import React from "react";
import { Box, Grid, Typography } from '@material-ui/core'
import "./style.scss"; 
import FiberManualRecordIcon from '@material-ui/icons/FiberManualRecord';
import MicNoneIcon from '@material-ui/icons/MicNone';; 

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

    return (
        // TO DO: make whatsapp screen fit the screen and customise controls 
        <Box className="paragraph-wrapper" pb={3}>
            <Box className="whatsapp-header" p={1} mb={3}>
                <Grid container alignItems="center">
                <Grid item xs={2}>
                    <Box className="whatsapp-box">
                        <img
                            src={"/gameAssets/" + data.content.chatgrpImg}
                            alt="Chat Profile"
                        />
                    </Box>
                </Grid>
        
                <Grid item xs={8}>
                    <Typography color="inherit" variant="h6" className="chat-name">
                        {data.content.chatgroupTitle}
                    </Typography>
                    <Typography color="inherit" variant="subtitle2">
                        online
                    </Typography>
                </Grid>
        
                <Grid item xs={2} />
                </Grid>
            </Box> 
        
            <Box maxHeight={300} className="text-area">
                {data.chat.map((content, index) => {
                    {console.log(content.text)}
                if (content.him===true) {
                    return (
                    <Box
                        key={content.text}
                        my={2}
                        mx={1}
                        display="flex"
                        justifyContent="flex-end"
                    >
                        <Box
                            className="chatbox-sender"
                            borderRadius={5}
                            p={1}
                        >
                            <Typography>{content.text}</Typography>
                        </Box>
                    </Box>
                    )
                } else {
                    return (
                    <Box key={content.text} my={2} mx={1} display="flex">
                        <Box
                            className="chatbox-receiver"
                            borderRadius={5}
                            p={1}
                        >
                        <Typography>{content.text}</Typography>
                        </Box>
                    </Box>
                    )
                }
                })}
                <div ref={props.eleRef} />
            </Box>
            <Box className="choices-wrapper">
                <p className="choices-title">What should (Character) say?</p>
                {data.characterChoice.map((content, index) => {
                    return (
                        <Box className="choices">{content.text}</Box>

                    )
                })}

            </Box>
            <Box className="send-wrapper">
                <FiberManualRecordIcon/>
                <Box className="send-button">Send</Box>
                <img src="gameAssets/wa-sticker.png" className="wa-sticker"></img>
                <MicNoneIcon/>

            </Box>
        </Box>

    )
}

export default Whatsapp; 