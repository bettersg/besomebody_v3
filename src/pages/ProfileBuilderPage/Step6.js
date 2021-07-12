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

function Step6(props) {
  
  return(
    <Box my={4}>
      <FormLabel component="legend">Preferred Username </FormLabel>                              
        <input type="text" placeholder="e.g. FLYBOY21" name="username" onBlur={props.handleChange} ></input>                 
    </Box> 
  );
}
  
export default Step6;
