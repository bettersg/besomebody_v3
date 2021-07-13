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
import clsx from 'clsx';
import { makeStyles } from '@material-ui/core/styles';
import './style.scss'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import { PBNavigation } from "./PBNavigation.js"
const useStyles = makeStyles({

})

function StyledRadio(props) {
  const classes = useStyles();

  return (
    <Radio
      className={classes.root}
      disableRipple
      color="default"
      checkedIcon={<span className={clsx(classes.icon, classes.checkedIcon)} />}
      icon={<span className={classes.icon} />}
      {...props}
    />
  );
}

function Step1(props) {
   
  return (
    <>
      <Box className={`PBWhatsapp__messages choices`} >
        <Fade in={true} key={props.order} timeout={300}>
          <div className="PBWhatsapp__messages--receiver newSpeaker">                    
            <div  className="PBWhatsapp__messages--receiver--name">Nadia</div>
            <Typography key={props.order}> First up - how young are you?</Typography>
            <RadioGroup aria-label="age"  name="age" onChange={props.handleChange}  >
              <FormControlLabel value="16" control={<StyledRadio />} label="Under 16" />
              <FormControlLabel value="19" control={<StyledRadio />} label="16 to 19" />
              <FormControlLabel value="20" control={<StyledRadio />} label="20-29" />
              <FormControlLabel value="30" control={<StyledRadio />} label="30-39" />
              <FormControlLabel value="40" control={<StyledRadio />} label="40-49" />
              <FormControlLabel value="50" control={<StyledRadio />} label="50-59" />
              <FormControlLabel value="60" control={<StyledRadio />} label="Above 60" />  
            </RadioGroup> 
          </div>
        </Fade>
        
           
      </Box>
        
      <PBNavigation />    
      <Box className={`Whatsapp__choicesWrapper`}>
          {/* {choices.map((choice, i) => {
            return (
              <Box
                className="choices"
                onClick={() => setChoice(choice.index)}
                key={i}
              >
                {choice.text}
              </Box>
            )
          })} */}
        </Box>   
    </>
    );
}
  
export default Step1;
