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

function Step3(props) {
  
  return(
    <Box my={4}>
    <FormLabel component="legend">Race</FormLabel>                              
    <RadioGroup aria-label="race" name="race"  onChange={props.handleChange} >
      <FormControlLabel value="CHINESE" control={<Radio />} label="Chinese" />
      <FormControlLabel value="MALAY" control={<Radio />} label="Malay" />
      <FormControlLabel value="INDIAN" control={<Radio />} label="Indian" />
      <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
      {/* {formData.race === 'OTHER' && <input type="text" placeholder="e.g. Chinese-Indian , Eurasian" name="race" onBlur={props.handleChange} ></input>}  */}
    </RadioGroup>
  </Box>  
  );
}
  
export default Step3;
