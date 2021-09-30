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

function Step2(props) {
  const GENDER_CHARACTER_LIMIT = 100;
  return(
    <Box className={`PBWhatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
            <Typography key={props.order}> Thanks! I'm {parseInt(props.state.age,10)>19?"just a bit younger than":"about the same age as"}  you! What gender do you identify as?</Typography>
              <RadioGroup aria-label="gender" name="gender"  onChange={props.handleChange} value={props.getState("gender", "")}>
                <FormControlLabel value="MALE" control={<Radio />} label="Male" />
                <FormControlLabel value="FEMALE" control={<Radio />} label="Female" />
                <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
                {props.state.gender === 'OTHER' &&
                  <TextField
                    name="gender"
                    placeholder="How do you identify yourself as?"
                    onBlur={props.handleChange}
                    inputProps={{ maxLength: GENDER_CHARACTER_LIMIT }}
                  />
                }

                  
                {/* Using onBlur instead of onChange because once changed, the text field disappears. So need to capture the data only once the user moves away. */ } 
              </RadioGroup>
              </Box>
              </Box>
              
            </Fade>
           
      </Box>
  );
}
  
export default Step2;
