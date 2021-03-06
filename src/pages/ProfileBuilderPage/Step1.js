import React from "react";
import {
    Box,
    FormLabel,
    FormControlLabel,
    RadioGroup,
    Radio,
    Fade,
    TextField,
    Typography,
    Container,
} from '@material-ui/core'
import './style.scss'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'


function Step1(props) {
   
  return (
    <>
      <Box className={`PBWhatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
              <Box key={props.order} my={2} mx={1} display="flex">
                <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
                  <Typography key={props.order} variant="overline" >
                    Nadia
                  </Typography> 
                  <Typography key={props.order}> First up - how young are you?</Typography>
                  <RadioGroup aria-label="age"  name="age" onChange={props.handleChange} value={props.getState("age", "")} >
                    <FormControlLabel value="16" control={<Radio />} label="Under 16" />
                    <FormControlLabel value="19" control={<Radio />} label="16 to 19" />
                    <FormControlLabel value="20" control={<Radio />} label="20-29" />
                    <FormControlLabel value="30" control={<Radio />} label="30-39" />
                    <FormControlLabel value="40" control={<Radio />} label="40-49" />
                    <FormControlLabel value="50" control={<Radio />} label="50-59" />
                    <FormControlLabel value="60" control={<Radio />} label="Above 60" />  
                  </RadioGroup> 
                </Box>
              </Box>
              
            </Fade>
           
      </Box>
        
              
      </>
    );
}
  
export default Step1;
