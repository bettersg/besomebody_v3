import React, { useState } from "react";
import {
  Box,
  Button,
  FormLabel,
  FormControlLabel,
  RadioGroup,
  Radio,
  TextField,
  Typography,
  Container,
  Fade,
} from '@material-ui/core'
import { useAuth } from '../../contexts/AuthContext'
import { updateDbUser } from '../../models/userModel'
import { Link , useHistory } from 'react-router-dom'
import { useSnackbar } from '../../contexts/SnackbarContext'
import './style.scss'



function Step7(props) {
  const history = useHistory()
  const { setSnackbar } = useSnackbar()

  const { currentUser } = useAuth()  
  const [isLoading, setIsLoading] = useState(false)

  const formData = {
    age: props.state.age?props.state.age:null,
    gender: props.state.gender? props.state.gender.toUpperCase():null,
    race: props.state.race? props.state.race.toUpperCase():null,
    religion: props.state.religion?props.state.religion.toUpperCase():null,
    housing: props.state.housing?props.state.housing.toUpperCase():null,
    username: props.state.username ? props.state.username : null,
    timestamp: Date.now(),
    }

  const handleSubmit = async (e) => {
      e.preventDefault()
       
      // console.log(formData);        
      
      try {
        setIsLoading(true)          
        await updateDbUser(formData, currentUser.id)
        history.push('/')  // redirect to root which will be the characterchoice page now.
       
      } catch (err) {
        setSnackbar({
          message: `There was an error: ${err.message}`,
          open: true,
          type: 'error',
        })
      }
      setIsLoading(false)      

  };

  return(
    <>
       <Box className={`PBWhatsapp__messages choices' }`} >
        <Fade in={true} key={props.order} timeout={300}>
          <Box key={props.order} my={2} mx={1} display="flex">
            <Box className="PBWhatsapp__messages--receiver" borderRadius={5} p={1}>                    
              <Typography key={props.order} variant="overline" >
                Nadia
              </Typography> 
              <Typography key={props.order}> Ok, so here's what I've got for your details. Now let's get started! </Typography> <br/>
                  <form onSubmit={handleSubmit}>
                   
                  
                  <div>Age (rounded down): {props.state.age?props.state.age:"You left this blank"}</div>
                  <div>Gender: {props.state.gender?props.state.gender.toUpperCase():"You left this blank"}</div>
                  <div>Ethnicity: {props.state.race?props.state.race.toUpperCase():"You left this blank"}</div>
                  <div>Religion: {props.state.religion?props.state.religion.toUpperCase():"You left this blank"}</div>
                  <div>Housing Type: {props.state.housing?props.state.housing.toUpperCase():"You left this blank"}</div>
                  <div>Username: {props.state.username?props.state.username:"You left this blank"}</div>   
                        
                  
                <br />                
                <Button
                    type="submit"
                    variant="contained"
                    color="primary"
                    disabled={isLoading}
                    className="submitBtn"
                  >
                    Submit - then start the game!
                </Button>
                  </form>
                </Box>
              </Box>
              
            </Fade>
           
      </Box>
    </>
  );
}
  
export default Step7;
