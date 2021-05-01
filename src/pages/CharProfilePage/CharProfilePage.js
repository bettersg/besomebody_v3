import React from "react";
import ProfileAvatar from "../../components/CharProfile/ProfileAvatar"
import {
    ThemeProvider,
    createMuiTheme, 
    makeStyles
} from "@material-ui/core/styles";
import TopNavBar from "../../components/CharProfile/TopNavBar";
import Box from '@material-ui/core/Box';
import Container from '@material-ui/core/Container';
import Button from '@material-ui/core/Button';
import ChapterBox from "../../components/CharProfile/ChapterBox"
import NavBar from "../../components/CharProfile/NavBar"


import "../styles.css";

class CharProfile extends React.Component {

    state = {
        persona: {
            alt: "Nadia",
            src:
            "https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
            name: "Nadid",
            description: "You've been friends since primary school",
        }, 
        chaptDetails: [
            {
                new: true, 
                startChapt: 6, 
                endChapt: 10, 
                title: "Family Matters",
                endingUnlocked: 0, 
                endingAvail: 3,
                replay: false 
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

export default CharProfile; 
