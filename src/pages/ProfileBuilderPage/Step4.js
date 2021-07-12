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
} from '@material-ui/core'

function Step4(props) {
  
  return(
    <Box my={4}>
      <FormLabel component="legend">Religion</FormLabel>                              
      <RadioGroup aria-label="religion" name="religion"  onChange={props.handleChange} >
        <FormControlLabel value="CHRISTIAN" control={<Radio />} label="Christian" />
        <FormControlLabel value="HINDU" control={<Radio />} label="Hindu" />
        <FormControlLabel value="BUDDHIST" control={<Radio />} label="Buddhist" />
        <FormControlLabel value="TAOIST" control={<Radio />} label="Taoist" />
        <FormControlLabel value="MUSLIM" control={<Radio />} label="Muslim" />
        <FormControlLabel value="SIKH" control={<Radio />} label="Sikh" />
        <FormControlLabel value="FREE-THINKER" control={<Radio />} label="Free-thinker" />                  
        <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
        {/* {formData.religion === 'OTHER' && <input type="text" placeholder="e.g. Chinese-Indian , Eurasian" name="religion" onBlur={handleChange} ></input>}  */}
      </RadioGroup>
    </Box> 
  );
}
  
export default Step4;
