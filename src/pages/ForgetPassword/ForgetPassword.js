/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { Link as RouterLink } from 'react-router-dom'
import {
  Box,
  Button,
  Card,
  CardContent,
  CardHeader,
  Grid,
  Link,
  TextField,
  Typography,
} from '@material-ui/core'
import { makeStyles } from '@material-ui/core/styles'
import { Controller, useForm } from 'react-hook-form'
import { useAuth } from '../../contexts/AuthContext'
import { useSnackbar } from '../../contexts/SnackbarContext'

const useStyles = makeStyles((theme) => ({
  link: {
    marginLeft: theme.spacing(1),
    marginRight: theme.spacing(1),
    color: theme.palette.primary.main,
  },
}))

const ForgetPassword = () => {
  const classes = useStyles()

  const [isLoading, setIsLoading] = useState(false)

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  // Auth Context
  const { resetPassword } = useAuth()

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
          await resetPassword(values.email)
          setSnackbar({
            message: 'Check inbox for further intructions',
            open: true,
            type: 'success',
          })
        } catch (err) {
          setSnackbar({
            message: `Failed to reset password: ${err.message}`,
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
      <Box maxWidth={700} mx="auto" mt={10}>
        <Card>
          <CardHeader
            title="Password Reset"
            titleTypographyProps={{ variant: 'h4', align: 'center' }}
          />
          <CardContent>
            <form onSubmit={handleSubmit(beforeSubmit)}>
              <Grid container spacing={1}>
                <Grid item xs={2}>
                  <Typography variant="body1">Email:</Typography>
                </Grid>
                <Grid item xs={10}>
                  <Controller
                    as={TextField}
                    control={control}
                    name="email"
                    type="email"
                    placeholder="Enter your email here"
                    required
                    fullWidth
                  />
                </Grid>
              </Grid>

              <Box mt={2} mx="auto">
                <Typography variant="body2" align="center">
                  <Link
                    to="/login"
                    component={RouterLink}
                    className={classes.link}
                  >
                    Login
                  </Link>
                </Typography>
              </Box>

              <Box mt={2} display="flex" justifyContent="center">
                <Button
                  variant="contained"
                  color="primary"
                  disabled={isSubmitting || isLoading}
                  type="submit"
                >
                  Submit
                </Button>
              </Box>
            </form>
          </CardContent>
        </Card>

        <Box maxWidth={700} mt={3} mx="auto">
          <Typography variant="body2" align="center">
            Need an account?
          </Typography>

          <Typography variant="body2" align="center">
            <Link to="/signup" component={RouterLink} className={classes.link}>
              Sign up
            </Link>
          </Typography>
        </Box>
      </Box>
    </Box>
  )
}

export default ForgetPassword
