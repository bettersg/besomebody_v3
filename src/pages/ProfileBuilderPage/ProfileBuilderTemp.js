import React, { useState, useEffect } from 'react';
import {
    Box,
    Button,     
    FormLabel,
    FormControlLabel,
    Checkbox,
    RadioGroup,
    Radio,
    TextField,
    Typography,
    Container,
} from '@material-ui/core'
import { useAuth } from '../../contexts/AuthContext'
import { Link , useHistory } from 'react-router-dom'
import { makeStyles } from '@material-ui/core/styles'
import {  updateDbUser } from '../../models/userModel'
import { useSnackbar } from '../../contexts/SnackbarContext'
  


const useStyles = makeStyles((theme) => ({
    link: {
      marginLeft: theme.spacing(1),
      marginRight: theme.spacing(1),
      color: theme.palette.primary.main,
    },
  }))
  

const ProfileBuilderTemp = () => {

    const history = useHistory()
    
    const classes = useStyles()
    
    // Auth Context
    const { currentUser } = useAuth()  
    
    const { setSnackbar } = useSnackbar()

    // form submission in progress
    const [isLoading, setIsLoading] = useState(false)

    const initialFormData = Object.freeze({
        age: "",
        gender: "",
    });
    const [formData, updateFormData] = React.useState(initialFormData);

    const handleChange = (e) => {
        updateFormData({
          ...formData,
    
          // Trimming any whitespace -> TODO: check why this is needed?
          [e.target.name]: e.target.value.trim()
        });
    };

    // TODO: Handle Others = custom string
    
    const handleSubmit = (e) => {
        e.preventDefault()
        
        setIsLoading(true);
        
        // TODO: Validation
        // TODO: Handle Others = custom string

        // console.log(formData);
        // console.log(formData.gender);
        // change this to a try / catch err
        updateDbUser(formData, currentUser.id);

        setIsLoading(false);
        // history.push('/');
    };
    

    return (
    <Box>
      <section>
        <Container maxWidth="md">
          <Box py={2} textAlign="center">
            <Typography variant="h3" component="h2" gutterBottom={true}>Profile Builder </Typography>
            <Typography variant="h6" color="textSecondary" paragraph={true}>The form to build the user profile / demographics goes here, and this will push to the UserDB model for { currentUser.id }</Typography>
          </Box>
          <Box mx="auto" width="75%" my={4}>
            <form onSubmit={handleSubmit}>
              

              <Box my={4}>
                <FormLabel component="legend">Age</FormLabel>               
                
                    <RadioGroup aria-label="age"  name="age" onChange={handleChange}  >
                      <FormControlLabel value="10" control={<Radio />} label="<19" />
                      <FormControlLabel value="20" control={<Radio />} label="20-29" />
                      <FormControlLabel value="30" control={<Radio />} label="30-39" />                      
                    </RadioGroup>
                
              </Box>

              <Box my={4}>
                <FormLabel component="legend">Gender</FormLabel>
                              
                      <RadioGroup aria-label="gender" name="gender"  onChange={handleChange} >
                        <FormControlLabel value="male" control={<Radio />} label="male" />
                        <FormControlLabel value="female" control={<Radio />} label="female" />
                        <FormControlLabel value="other" control={<Radio />} label="other" />
                        {formData.gender === 'other' && <input type="text" placeholder="other" name="gender"></input>}

                      </RadioGroup>
                  
                
                 
              </Box>

              <Button variant="contained" color="primary" type="Submit" > Submit - then Start the game</Button>

            </form>
            
          </Box>
         
        </Container>
      </section>
      
       
    </Box>
    );
}
 
export default ProfileBuilderTemp;