import React from "react";
import {
    Box,
    FormLabel,
    FormControlLabel,
    RadioGroup,
    Radio,
    TextField,
    Typography,
  Container,
    Fade,
} from '@material-ui/core'
import './style.scss'
import { PBNavigation } from "./PBNavigation.js"

function Step0(props) {
   
    return(
      <div>
        <Box className={`PBWhatsapp__messages`} dir="ltr">
        <Fade in={true} key={props.order} timeout={300}>
            <div>
              <div className="PBWhatsapp__messages--receiver newSpeaker">
                <div  className="PBWhatsapp__messages--receiver--name">Nadia</div>
                <Typography key={props.order}> I'll need to understand you better by asking a few personal questions. We only use the data to make the game more relevant to you, and we will not share the data with anybody. If you're not comfortable answering any of these questions, you can just skip that question.</Typography>
              </div>
              <div className="PBWhatsapp__messages--receiver">
                <Typography key={props.order + "partb"}> Once you've picked your answer, click the area below. Oh, all the questions are optional so if you don't want to answer anything, just skip it by clicking the area below.</Typography>
              </div>
            </div>
          </Fade>
        </Box>

        <PBNavigation text="Tap to continue"/>
      </div>
    );
}
  
export default Step0;
