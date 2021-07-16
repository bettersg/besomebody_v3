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

function Step0(props) {
   
    return(
      <Box      className={`PBWhatsapp__messages choices' }`}      dir="ltr">
       <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
              <Typography key={props.order}> I'll need to understand you better by asking a few personal questions. We only use the data to make the game more relevant to you, and we will not share the data with anybody. If you're not comfortable answering any of these questions, you can just skip that question.</Typography>
              <Typography key={props.order + "partb"}>Once you've picked your answer, click the area below. Oh, all the questions are optional so if you don't want to answer anything, just skip it by clicking the area below.</Typography>
            </Box>                    
          </Box>
        </Fade>
      </Box>
    );
}
  
export default Step0;
