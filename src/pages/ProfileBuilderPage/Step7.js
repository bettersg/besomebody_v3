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
} from '@material-ui/core'
import { useAuth } from '../../contexts/AuthContext'
import { updateDbUser } from '../../models/userModel'
import { Link , useHistory } from 'react-router-dom'
import { useSnackbar } from '../../contexts/SnackbarContext'



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
      <form onSubmit={handleSubmit}>
      <Box my={4}>
      <Typography variant="body2">Your submitted profile is:</Typography>
      <div>Age: {props.state.age?props.state.age:null}</div>
      <div>Gender: {props.state.gender?props.state.gender.toUpperCase():null}</div>
      <div>Race: {props.state.race?props.state.race.toUpperCase():null}</div>
      <div>Religion: {props.state.religion?props.state.religion.toUpperCase():null}</div>
      <div>Housing Type: {props.state.housing?props.state.housing.toUpperCase():null}</div>
      <div>Username: {props.state.username?props.state.username:null}</div>   
             
    </Box>
    
    <Button
        type="submit"
        variant="contained"
        color="primary"
        // disabled={isLoading}
      >
        Submit - then Start the game
    </Button>
    </form>
    </>
  );
}
  
export default Step7;
