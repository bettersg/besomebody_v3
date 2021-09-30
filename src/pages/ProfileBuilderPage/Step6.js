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

function Step6(props) {
  const USERNAME_CHARACTER_LIMIT = 100;
  return(
    <Box className={`PBWhatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
              <Typography key={props.order}> And the most important one: how can I address you? I usually go by just "Nad" for friends. </Typography>                               
                <TextField
                  type="text"
                  placeholder="e.g. Rocky"
                  name="username"
                  onBlur={props.handleChange}
                  inputProps={{ maxLength: USERNAME_CHARACTER_LIMIT }}
                />
                </Box>
              </Box>
              
            </Fade>
           
      </Box>
  );
}
  
export default Step6;
