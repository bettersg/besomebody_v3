import React, { useState } from 'react'
import makeStyles from '@material-ui/core/styles/makeStyles'
import Box from '@material-ui/core/Box'

// Constants
import {
    CCP_SCROLLMENU, 
} from "./constants"
import "./styles.scss"

const useStyles = makeStyles((theme) => ({
    CharChoiceWrapper: {
        height: '90vh',
        [theme.breakpoints.up('xs')]: {
            height: '660px',
        },
        width: "100%", 
        backgroundColor: "white", 
        
        overflow: "auto", 
        '&::-webkit-scrollbar': {
            width: '0'
        },
    },
    // WhatsappMsgs: {
    //   maxHeight: maxHeight,
    // }
}))

export const CharacterChoicePage2 = () => {
    const classes = useStyles()  

    return (
        <Box className={classes.CharChoiceWrapper} >
            <div className="CharacterChoices__scrollMenu">
                {CCP_SCROLLMENU.map((content, i) => {
                    return (
                        <div className="CharacterChoices__scrollMenu__character">
                            <img src={content.src} />
                            {content.name}
                        </div>
                    )
                })}
            </div>

            {/* <!-- Continue Playing Banner --> */}
            <div className="CharacterChoices__banner">
                <div className="grid-container">
                    <div>
                        <div className="item1_continuePlaying">Continue Playing</div>
                        <div className="item2_characterName">Nadia</div>  
                    </div>

                    <div className="item4_playButton">
                        <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="25" cy="25" r="25" fill="#664EFC"/>
                        <path d="M34.0278 25L20.4862 35.8253V14.1747L34.0278 25Z" fill="white"/>
                        </svg>
                    </div>
                </div>
            </div>

            {/* <!-- Character card --> */}
            <div className="CharacterChoices">
                <div className="CharacterChoices__feed">
                    <a href=""><img className="CharacterChoices__feed--profilePic" src="/character_choice_page/profile_icon_small.png"/></a>
                    

                    <div>
                        <div className="profile_Name">Nadia</div>
                        <div className="profile_status">Not played</div>
                    </div>
                </div>

                <img id="image_post" src="/character_choice_page/nadia.png"/>

                {/* like and share icons */}
                <div class="profile_buttons">
                    <a href="">
                        <img src="/character_choice_page/heart.svg" width="24px" height="24px"/>
                    </a>

                    <div class="profile_buttons_right">
                        <a href="">
                        <img src="/character_choice_page/share.svg" width="24px" height="24px"/>
                        </a>
                    </div>
                </div>

                <div class="likes">## likes</div>
                <div class="post_caption">
                    <p><b>(Character Name)</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a turpis eget est iaculis dapibus. Fusce vulputate ipsum id augue rhoncus congue.</p>
                </div>

                <div className="CharacterChoices__discover">
                    <div class="profile_tile">
                        <p>Discover Nadia's story</p>
                    </div>
                    <div>
                        <button class="play_button">Play</button>
                    </div>
                </div>
            </div>
        </Box>
    )
}