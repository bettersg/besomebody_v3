import React from "react";
import { Box, Grid, Typography } from '@material-ui/core'
import "./style.scss"; 

const Whatsapp = (props) => {

    return (
        <Box className="paragraph-wrapper" pb={3}>
            <Box className="whatsapp-header" p={1} mb={3}>
                <Grid container alignItems="center">
                <Grid item xs={2}>
                    <Box className="whatsapp-box">
                        <img
                            src={`gameAssets/${props.content.chatgroupImage}`}
                            alt="Chat Profile"
                        />
                    </Box>
                </Grid>
        
                <Grid item xs={8}>
                    <Typography color="inherit" variant="h6" className="chat-name">
                        {props.content.chatgroupTitle}
                    </Typography>
                    <Typography color="inherit" variant="subtitle2">
                        online
                    </Typography>
                </Grid>
        
                <Grid item xs={2} />
                </Grid>
            </Box> 
        
            <Box maxHeight={300} overflow="scroll">
                {props.currentPara.map((step) => {
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
                            className="chatbox-sender"
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
                <div ref={props.eleRef} />
            </Box>
        </Box>

    )
}

export default Whatsapp; 