import React from "react";
import ProfileAvatar from "../../components/CharProfile/ProfileAvatar"
import {
    ThemeProvider,
    createMuiTheme, 
    makeStyles
} from "@material-ui/core/styles";
import WhatsappContainer from "../../components/Whatsapp/WhatsappContainer"


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
                        <WhatsappContainer />
                    </div>

                </div>
            </ThemeProvider>
        )
    }
}

export default CharProfile; 
