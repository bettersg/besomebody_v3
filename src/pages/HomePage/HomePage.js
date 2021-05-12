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
} from '@material-ui/core'
import { Alert } from '@material-ui/lab'
import { useAuth } from '../../contexts/AuthContext'
import { deleteDbUser } from '../../models/userModel'

const Home = () => {
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

  const handleDeleteUser = async () => {
    try {
      setIsLoading(true)
      await deleteUser()
      await deleteDbUser(currentUser.uid)
    } catch (err) {
      setSnackbar({
        message: `Failed to delete user: ${err.message}`,
        open: true,
        type: 'error',
      })
    }
  }

  return (
    <Box>
      <Box width={500} mx="auto" mt={5}>
        <Typography variant="h4" align="center">
          RMUIF
        </Typography>
        <Typography variant="body1" align="center">
          Supercharged version of Create React App with all the bells and
          whistles.
        </Typography>
      </Box>

      <Box width={400} mx="auto" mt={10} display="flex" justifyContent="center">
        <Button
          color="secondary"
          variant="outlined"
          disabled={isLoading}
          onClick={handleLogout}
        >
          Logout
        </Button>
      </Box>

      <Box width={400} mx="auto" mt={10} display="flex" justifyContent="center">
        <Button
          color="secondary"
          variant="contained"
          disabled={isLoading}
          onClick={() => setIsDialogOpen(true)}
        >
          Delete account
        </Button>
      </Box>

      <Dialog
        open={isDialogOpen}
        onClose={() => setIsDialogOpen(false)}
        aria-labelledby="delete-user-title"
        aria-describedby="delete-user-description"
      >
        <DialogTitle id="delete-user-title">Delete User</DialogTitle>
        <DialogContent>
          <DialogContentText id="delete-user-description">
            Are you sure you want to delete {currentUser.email} ?
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setIsDialogOpen(false)}>Cancel</Button>
          <Button onClick={handleDeleteUser} color="secondary">
            Delete
          </Button>
        </DialogActions>
      </Dialog>

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

export default Home
