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

function Step1(props) {
   
    return(
      <Box my={4}>
        <FormLabel component="legend">Age</FormLabel>                               
        <RadioGroup aria-label="age"  name="age" onChange={props.handleChange}  >
            <FormControlLabel value="16" control={<Radio />} label="Under 16" />
            <FormControlLabel value="19" control={<Radio />} label="16 to 19" />
            <FormControlLabel value="20" control={<Radio />} label="20-29" />
            <FormControlLabel value="30" control={<Radio />} label="30-39" />
            <FormControlLabel value="40" control={<Radio />} label="40-49" />
            <FormControlLabel value="50" control={<Radio />} label="50-59" />
            <FormControlLabel value="60" control={<Radio />} label="Above 60" />  
        </RadioGroup>                
      </Box>
    );
}
  
export default Step1;
