import React, { useState } from 'react'
import {
  Box,
  Button,
  Dialog,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Snackbar,
  Typography,
  Container,
} from '@material-ui/core'

import { useAuth } from '../../contexts/AuthContext'
import { Link } from 'react-router-dom'

const IntroPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [isDialogOpen, setIsDialogOpen] = useState(false)
  const [snackbar, setSnackbar] = useState({
    message: '',
    open: false,
    type: 'error',
  })

  const { currentUser } = useAuth()
 

  return (
    <Box>
      <section>
        <Container maxWidth="md">
          <Box py={8} textAlign="center">
            <Typography variant="h3" component="h2" gutterBottom={true}>Introduction Video</Typography>
            <Typography variant="h5" color="textSecondary" paragraph={true}>Intro animation goes here, then the user is shown the sign up then profile builder link</Typography>
            <Box mt={4}>
              <Link to="/signup"><Button variant="contained" color="primary" >Sign Up to Play Game</Button></Link>
              
            </Box>
          </Box>
        </Container>
      </section>
       
    </Box>
  )
}

export default IntroPage;
