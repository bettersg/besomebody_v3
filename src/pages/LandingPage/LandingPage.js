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
import { Alert } from '@material-ui/lab'
import { useAuth } from '../../contexts/AuthContext'
import { Link } from 'react-router-dom'

const LandingPage = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [isDialogOpen, setIsDialogOpen] = useState(false)
  const [snackbar, setSnackbar] = useState({
    message: '',
    open: false,
    type: 'error',
  })

  const { currentUser, logout, deleteUser } = useAuth()

  const handleLogout = async () => {
    try {
      setIsLoading(true)
      await logout()
    } catch (err) {
      setSnackbar({
        message: `Failed to logout: ${err.message}`,
        open: true,
        type: 'error',
      })
    }

    setIsLoading(false)
  }
 

  return (
    <Box>
      <section>
        <Container maxWidth="md">
          <Box py={8} textAlign="center">
            <Typography variant="h3" component="h2" gutterBottom={true}>To Be You</Typography>
            <Typography variant="h6" color="textSecondary" paragraph={true}>This is the landing page for https://game.tobeyou.sg. Players who sign up on the pre-launch page will be given this link for them to start playing the game.</Typography>
          </Box>
          <Box mx="auto" width="75%" my={2}>
            <Link to="/intro"><Button variant="contained" fullWidth={true} color="primary"  >Start New Game</Button></Link>
          </Box>
          <Box mx="auto" width="75%" my={2}>
            <Link to="/login"><Button variant="contained" fullWidth={true} color="secondary" >Login to Resume Game</Button></Link>
            
          </Box>
          
        </Container>
      </section>
      
      
 
 

      <Snackbar
        open={snackbar.open}
        autoHideDuration={6000}
        anchorOrigin={{ vertical: 'top', horizontal: 'center' }}
      >
        <Alert severity={snackbar.type}>{snackbar.message}</Alert>
      </Snackbar>
    </Box>
  )
}

export default LandingPage;

/*  

        <Box maxWidth="md" mx="auto" display="flex" justifyContent="center">
          <Button
            color="secondary"
            variant="outlined"
            disabled={isLoading}
            onClick={handleLogout}
          >
            Logout
        </Button>
        </Box>
        
*/
