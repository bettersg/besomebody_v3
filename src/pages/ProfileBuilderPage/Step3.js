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

function Step3(props) {
  
  return(
    <Box className={`Whatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="Whatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
              <Typography key={props.order}> I'm female, and I'm Malay. What ethnicity or racial group do you identify as? </Typography>                                
               <RadioGroup aria-label="race" name="race"  onChange={props.handleChange} >
                <FormControlLabel value="CHINESE" control={<Radio />} label="Chinese" />
                <FormControlLabel value="MALAY" control={<Radio />} label="Malay" />
                <FormControlLabel value="INDIAN" control={<Radio />} label="Indian" />
                  <FormControlLabel value="OTHER" control={<Radio />} label="Other" />
                  {props.state.race === 'OTHER' && <TextField name="race" placeholder="How do you identify yourself as?"  onBlur={props.handleChange} />        }
                {/* {formData.race === 'OTHER' && <input type="text" placeholder="e.g. Chinese-Indian , Eurasian" name="race" onBlur={props.handleChange} ></input>}  */}
              </RadioGroup>
              </Box>
              </Box>
              
            </Fade>
           
      </Box> 
  );
}
  
export default Step3;
