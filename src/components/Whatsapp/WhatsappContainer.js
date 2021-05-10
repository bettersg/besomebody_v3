import React from "react";
import { withStyles, makeStyles } from "@material-ui/core/styles";
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import Divider from "@material-ui/core/Divider";
import ListItemText from "@material-ui/core/ListItemText";
import ListItemAvatar from "@material-ui/core/ListItemAvatar";
import Avatar from "@material-ui/core/Avatar";
import Typography from "@material-ui/core/Typography";
import { lightGreen } from "@material-ui/core/colors";
import { Button } from "@material-ui/core";

import { ExpandMore } from '@material-ui/icons';
import ChatBubbleYou from "./ChatbubbleYou"
import ChatBubbleThem from "./ChatbubbleThem"
// import ReplyOption from "./ReplyOption"
import "./WhatsappContainerStyle.scss"


const useStyles = makeStyles((theme) => ({
  root: {
    width: "100%",
    maxWidth: "480px", // to mimic mobile app
    backgroundColor: lightGreen
  },
  inline: {
    display: "inline",
    align: "right"
  }
}));

const profileImage = "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/to9wobgohx1tmried8r5"

export default function WhatsappContainer() {
  const classes = useStyles();

  return (
    <div class="wa-container">
        <div class="chat-window">
            <div class="wrapperchat">
                <div class="chat-root"> 
                    <div class="user-bar"> 
                         {/* user info start */}
                        <div class="user">
                            <img src={profileImage} alt="user" />
                        </div>
                        <div class="user-name">
                            <b>Gavin</b>
                            <span>online now</span>
                        </div>
                    </div>

                    <div class="chat-window">
                        {/* convo start */}
                        <div class="conversation">
                            <ChatBubbleYou />  
                            <ChatBubbleThem />  
                        </div>
                    </div>
                </div>

                <div class="textarea">
                    <div class="message">Tap to continue</div>
                    <div class="continue">
                        <div class="circle-cont">
                            <ExpandMore className="i"/>  
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    
  );
}
