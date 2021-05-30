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
  const { signUp } = useAuth() // TODO: check this if it is correct

  // Init form
  const defaultValues = {
    email: '',
    
  }
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
          await updateDbUser(profile)        
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

  return (
    <Box>
      <section>
        <Container maxWidth="md">
          <Box py={8} textAlign="center">
            <Typography variant="h3" component="h2" gutterBottom={true}>Profile Builder</Typography>
            <Typography variant="h6" color="textSecondary" paragraph={true}>The form to build the user profile / demographics goes here, and this will push to the UserDB model.</Typography>
          </Box>
          <Box mx="auto" width="75%" my={2}>
            <form onSubmit={handleSubmit(beforeSubmit)}>
              <Controller
                as={TextField}
                control={control}
                name="age"
                type="age"
                placeholder="Enter your age here"
                required
                fullWidth
              />
            </form>
            <Link to="/"><Button variant="contained" fullWidth={true} color="primary"  > Upon completion of the form - Start the game</Button></Link>
          </Box>
            
        </Container>
      </section>
      
       
    </Box>
  )
}

export default ProfileBuilderPage;
 