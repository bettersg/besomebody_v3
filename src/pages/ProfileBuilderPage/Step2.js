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

function Step2(props) {
  
  return(
    <Box my={4}>
      <FormLabel component="legend">Gender</FormLabel>                              
      <RadioGroup aria-label="gender" name="gender"  onChange={props.handleChange} >
        <FormControlLabel value="MALE" control={<Radio />} label="Male" />
        <FormControlLabel value="FEMALE" control={<Radio />} label="Female" />
        <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
          {/* {formData.gender === 'OTHER' && <input type="text" placeholder="Other" name="gender" onBlur={props.handleChange} ></input>} */}
        {/* Using onBlur instead of onChange because once changed, the text field disappears. So need to capture the data only once the user moves away. */ }
      </RadioGroup>
    </Box>
  );
}
  
export default Step2;
