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

function Step4(props) {
  
  return(
    <Box className={`Whatsapp__messages choices' }`} >
    <Fade in={true} key={props.order} timeout={300}>
      <Box key={props.order} my={2} mx={1} display="flex">
        <Box className="Whatsapp__messages--receiver" borderRadius={5} p={1}>                    
          <Typography key={props.order} variant="overline" >
            Nadia
          </Typography> 
          <Typography key={props.order}> Just 2 more to go! I'm Muslim (although, as you will see, I'm still figuring what that means to me). What is your religion? </Typography>                               
                <RadioGroup aria-label="religion" name="religion"  onChange={props.handleChange} >
                  <FormControlLabel value="CHRISTIAN" control={<Radio />} label="Christian" />
                  <FormControlLabel value="HINDU" control={<Radio />} label="Hindu" />
                  <FormControlLabel value="BUDDHIST" control={<Radio />} label="Buddhist" />
                  <FormControlLabel value="TAOIST" control={<Radio />} label="Taoist" />
                  <FormControlLabel value="MUSLIM" control={<Radio />} label="Muslim" />
                  <FormControlLabel value="SIKH" control={<Radio />} label="Sikh" />
                  <FormControlLabel value="FREE-THINKER" control={<Radio />} label="Free-thinker" />                  
                  <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
                  {props.state.religion === 'OTHER' && <TextField name="religion" placeholder="How do you identify yourself as?" onBlur={props.handleChange} />        }
                  {/* {formData.religion === 'OTHER' && <input type="text" placeholder="e.g. Chinese-Indian , Eurasian" name="religion" onBlur={handleChange} ></input>}  */}
                </RadioGroup>
                </Box>
              </Box>
              
            </Fade>
           
      </Box>
  );
}
  
export default Step4;
