import React from "react";
import { useParams } from 'react-router-dom'

import ProfileAvatar from "./ProfileAvatar"
import {
    ThemeProvider,
    createMuiTheme, 
    makeStyles
} from "@material-ui/core/styles";
import TopNavBar from "./TopNavBar";
import Box from '@material-ui/core/Box';
import Container from '@material-ui/core/Container';
import Button from '@material-ui/core/Button';
import ChapterBox from "./ChapterBox"
import NavBar from "./NavBar"


import "../styles.css";


function CharacterName() {
    let { name } = useParams();
    return <>{name}</>;
}

// TODO: Convert the static state below into one that pulls info from a JSON on all the characters
  
class CharacterChapterPage extends React.Component {
    
    
    state = {
        persona: {
            alt: "Nadid",
            src:
            "https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
            name: "Nadid",
            description: "Nadia wants to become a doctor, but will life and love get in the way of her plan?",
        }, 
        chaptDetails: [
            {
                new: true, 
                startChapt: 6, 
                endChapt: 10, 
                title: "Family Matters",
                endingUnlocked: 0, 
                endingAvail: 3,
                replay: false,
                knot_link: "/story/nadid",
                chapter_summary: "This is a summary of what happened"
            }, 
            {
                new: false, 
                startChapt: 6, 
                endChapt: 10, 
                title: "The Anniversary",
                endingUnlocked: 1, 
                endingAvail: 3,
                replay: true 
            }, 
            {
                new: false, 
                startChapt: 6, 
                endChapt: 10, 
                title: "The Bully",
                endingUnlocked: 3, 
                endingAvail: 3,
                replay: true 
            }, 
            {
                new: false, 
                startChapt: 6, 
                endChapt: 10, 
                title: "The Bully",
                endingUnlocked: 3, 
                endingAvail: 3,
                replay: true 
            }      
        ]

    };
    render() {
        let chaptDetails = this.state.chaptDetails; 

        return(
            <ThemeProvider>
                <div className="smartphone">
                    <div className="App">
                        <TopNavBar />
                        <Box className="profileBox" px={8} m={5}>
                            <ProfileAvatar avatarInfo={this.state.persona} />
                            <CharacterName />
                        </Box>
                        <div style={{paddingBottom:"20%"}}>
                            {chaptDetails.length > 0 
                                ? chaptDetails.map((chapt) => {
                                    return (
                                        <div style={{display: "flex", justifyContent: "center"}}>
                                            <ChapterBox chaptDetails={chapt}/>
                                        </div>
                                    )
                                })
                                : <div> No Chapters Available </div>
                            }
                        </div>
                        
                        <NavBar />
                    </div>

                </div>
            </ThemeProvider>
        )
    }
}

export default CharacterChapterPage; 
