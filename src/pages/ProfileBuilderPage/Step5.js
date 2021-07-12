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

function Step5(props) {
  
  return(
    <Box my={4}>
    <FormLabel component="legend">Housing Type</FormLabel>                              
    <RadioGroup aria-label="housing" name="housing"  onChange={props.handleChange} >
      <FormControlLabel value="HDB" control={<Radio />} label="HDB" />
      <FormControlLabel value="CONDO" control={<Radio />} label="Condominium" />
      <FormControlLabel value="LANDED" control={<Radio />} label="Landed" />                                     
      <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
      {/* {formData.housing === 'OTHER' && <input type="text" placeholder="e.g. Bungalow" name="housing" onBlur={props.handleChange} ></input>}  */}
    </RadioGroup>
  </Box> 
  );
}
  
export default Step5;
