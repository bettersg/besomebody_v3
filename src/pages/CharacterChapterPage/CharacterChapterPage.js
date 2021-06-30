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
import { CHARACTER_MAP } from '../../models/storyMap'


import "../styles.css";

const CharacterChapterPage = () => {
    const { name } = useParams();

    const persona = CHARACTER_MAP.find((character) => character.linkName === name);
    // const chapters = STORY_MAP.find((character) => character.id === 1);    
    // TODO: change this from hardcoded to id 1 to take in a parameter 
    

    return(
         
        <div className="smartphone">
            <div className="App">
                <TopNavBar />
                <Box className="profileBox" px={8} m={5}>
                    <ProfileAvatar avatarInfo={persona} />                   
                </Box>
                <div style={{paddingBottom:"20%"}}>
                    {persona.chapters.length > 0 
                        ? persona.chapters.map((chapt,i) => {
                            return (
                                <div style={{display: "flex", justifyContent: "center"}}  key={i}>
                                    <ChapterBox chaptDetails={chapt} total={persona.chapters.length} key={i} />
                                </div>
                            )
                        })
                        : <div> No Chapters Available </div>
                    }
                </div>
                
                <NavBar />
            </div>

        </div>
        
    )
    
}

export default CharacterChapterPage; 

// removed ThemeProvider as the wrapper, because no theme was passed as a prop, even though it is required. I think we can just wrap the whole app in a ThemeProvider instead of wrapping each component in one. 


    // state = {
    //     persona: {
    //         alt: "Nadid",
    //         src:
    //         "https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
    //         name: "Nadid",
    //         description: "Nadia wants to become a doctor, but will life and love get in the way of her plan?",
    //     }, 
        // chaptDetails: [
        //     {
        //         new: true, 
        //         startChapt: 6, 
        //         endChapt: 10, 
        //         title: "Family Matters",
        //         endingUnlocked: 0, 
        //         endingAvail: 3,
        //         replay: false,
        //         knot_link: "/story/nadid",
        //         chapter_summary: "This is a summary of what happened"
        //     }, 
        //     {
        //         new: false, 
        //         startChapt: 5, 
        //         endChapt: 10, 
        //         title: "The Anniversary",
        //         endingUnlocked: 1, 
        //         endingAvail: 3,
        //         replay: true 
        //     }, 
        //     {
        //         new: false, 
        //         startChapt: 4, 
        //         endChapt: 10, 
        //         title: "The Bully",
        //         endingUnlocked: 3, 
        //         endingAvail: 3,
        //         replay: true 
        //     }, 
        //     {
        //         new: false, 
        //         startChapt: 3, 
        //         endChapt: 10, 
        //         title: "The Bully",
        //         endingUnlocked: 3, 
        //         endingAvail: 3,
        //         replay: true 
        //     }      
        // ]

    // };