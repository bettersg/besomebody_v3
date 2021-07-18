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

function Step5(props) {
  
  return(
    <Box className={`PBWhatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
              <Typography key={props.order}> {props.state.religion==="MUSLIM"? "Hey, a fellow Muslim! Maybe we can learn from each other!":"Cool - I really want to learn more about your belief system too!"} Ok last question - what is your housing type? I stay in an HDB with my family, and it's useful to know what your social context is so that we can tailor the stories better for you in future. </Typography>                
             <RadioGroup aria-label="housing" name="housing"  onChange={props.handleChange} value={props.getState("housing", "")}>
                <FormControlLabel value="HDB" control={<Radio />} label="HDB" />
                <FormControlLabel value="CONDO" control={<Radio />} label="Condominium" />
                <FormControlLabel value="LANDED" control={<Radio />} label="Landed" />                                     
                  <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
                  {props.state.housing === 'OTHER' && <TextField name="housing" placeholder="How would you describe your housing type?" onBlur={props.handleChange} />        }
                {/* {formData.housing === 'OTHER' && <input type="text" placeholder="e.g. Bungalow" name="housing" onBlur={props.handleChange} ></input>}  */}
              </RadioGroup>
              </Box>
              </Box>
              
            </Fade>
           
      </Box>
  );
}
  
export default Step5;
