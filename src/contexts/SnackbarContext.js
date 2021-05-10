import React, { useContext, useState } from 'react'
import { Snackbar } from '@material-ui/core'
import { Alert } from '@material-ui/lab'

const SnackbarContext = React.createContext(null)

export const useSnackbar = () => {
  return useContext(SnackbarContext)
}

const SnackbarProvider = ({ children }) => {
  const [snackbar, setSnackbar] = useState({
    message: '',
    open: false,
    type: 'error',
  })

  const value = {
    setSnackbar,
  }
  return (
    <SnackbarContext.Provider value={value}>
      {children}
      <Snackbar
        onClose={() => {
          setSnackbar({
            message: '',
            open: false,
            type: 'error',
          })
        }}
        open={snackbar.open}
        autoHideDuration={6000}
        anchorOrigin={{ vertical: 'top', horizontal: 'center' }}
      >
        <Alert
          onClose={() => {
            setSnackbar({
              message: '',
              open: false,
              type: 'error',
            })
          }}
          severity={snackbar.type}
        >
          {snackbar.message}
        </Alert>
      </Snackbar>
    </SnackbarContext.Provider>
  )
}

export default SnackbarProvider
