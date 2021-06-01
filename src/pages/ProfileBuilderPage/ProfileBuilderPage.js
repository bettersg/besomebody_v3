import React, { useState , useEffect } from 'react'
import {
  Box,
  Button,
  Dialog,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Snackbar,
  FormGroup,
  FormLabel,
  FormControlLabel,
  Checkbox,
  RadioGroup,
  Radio,
  TextField,
  Typography,
  Container,
} from '@material-ui/core'
import { Alert } from '@material-ui/lab'
import { useAuth } from '../../contexts/AuthContext'
import { Link , useHistory } from 'react-router-dom'
import { makeStyles } from '@material-ui/core/styles'
import { Controller, useForm } from 'react-hook-form'
import { createDbUser, updateDbUser } from '../../models/userModel'
import { useSnackbar } from '../../contexts/SnackbarContext'

const useStyles = makeStyles((theme) => ({
  link: {
    marginLeft: theme.spacing(1),
    marginRight: theme.spacing(1),
    color: theme.palette.primary.main,
  },
}))


const ProfileBuilderPage = () => {
  const classes = useStyles()
  const history = useHistory()

  const [isLoading, setIsLoading] = useState(false)

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  // Auth Context
  const { currentUser } = useAuth() // TODO: check this if it is correct

  // Init form
  const defaultValues = {    
    gender: '',   
  }

  const [gender, setGender] = useState('female');


  const {
    formState: { isSubmitting },
    handleSubmit,
    control,
    reset,
  } = useForm({
    defaultValues,
  })

  useEffect(() => {
    if (isSubmitting) {
      reset(defaultValues)
    }
  }, [isSubmitting])

  const beforeSubmit = async (values) => {
    switch (true) {
      case !values.email: {
        return setSnackbar({
          message: 'Email is required',
          open: true,
          type: 'error',
        })
      }
       
      default: {
        try {
          setIsLoading(true)          
          
          const profile = {
            age: values.age, // TODO: update for profile fields            
          }
          await updateDbUser(profile, currentUser.id)        
          history.push('/')
        } catch (err) {
          setSnackbar({
            message: `Failed to update: ${err.message}`,
            open: true,
            type: 'error',
          })
        }
        setIsLoading(false)
      }
    }
  }


  const handleGender = (event) => {
    setGender(event.target.value);
    console.log("gender" + event.target.value);
    // build up the user profile avatar or do something else
  };

  const handleOther = (event) => {
    console.log("other" + event.target.value);
    // if user selects other, convert to text field
  };

  return (
    <Box>
      <section>
        <Container maxWidth="md">
          <Box py={2} textAlign="center">
            <Typography variant="h3" component="h2" gutterBottom={true}>Profile Builder</Typography>
            <Typography variant="h6" color="textSecondary" paragraph={true}>The form to build the user profile / demographics goes here, and this will push to the UserDB model.</Typography>
          </Box>
          <Box mx="auto" width="75%" my={4}>
            <form onSubmit={handleSubmit(beforeSubmit)}>
              

              <Box my={4}>
                <FormLabel component="legend">Age</FormLabel>
                <RadioGroup aria-label="age" name="age">
                  <FormControlLabel value="10" control={<Radio />} label="<19" />
                  <FormControlLabel value="20" control={<Radio />} label="20-29" />
                  <FormControlLabel value="30" control={<Radio />} label="30-39" />                
                </RadioGroup>
                
              </Box>

              <Box my={4}>
                <FormLabel component="legend">Sex</FormLabel>
                <RadioGroup aria-label="gender" name="gender" onChange={handleGender}>
                  <FormControlLabel value="female" control={<Radio />} label="Female" />
                  <FormControlLabel value="male" control={<Radio />} label="Male" />
                  <FormControlLabel value="other" control={<Radio onChange={handleOther} />} label="Other" />
                  {gender === 'other' && <input type="text" onChange={handleOther}></input>}
                </RadioGroup>
                
              </Box>


            </form>
            
          </Box>
          <Link to="/" ><Button variant="contained" color="primary" > Upon completion of the form - Start the game</Button></Link>
        </Container>
      </section>
      
       
    </Box>
  )
}

export default ProfileBuilderPage;
 