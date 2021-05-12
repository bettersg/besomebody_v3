/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { Link as RouterLink, useHistory } from 'react-router-dom'
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

const Login = () => {
  const classes = useStyles()
  const history = useHistory()

  const [isLoading, setIsLoading] = useState(false)

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  // Auth Context
  const { login } = useAuth()

  // Init form
  const defaultValues = {
    email: '',
    password: '',
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
      case !values.password: {
        return setSnackbar({
          message: 'Password is required',
          open: true,
          type: 'error',
        })
      }
      default: {
        try {
          setIsLoading(true)
          await login(values.email, values.password)
          history.push('/')
        } catch (err) {
          setSnackbar({
            message: `Failed to log in: ${err.message}`,
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
            title="Login"
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
                <Grid item xs={2}>
                  <Typography variant="body1">Password:</Typography>
                </Grid>
                <Grid item xs={10}>
                  <Controller
                    as={TextField}
                    control={control}
                    name="password"
                    type="password"
                    placeholder="Enter your password here"
                    required
                    fullWidth
                  />
                </Grid>
              </Grid>

              <Box my={2} mx="auto">
                <Typography variant="body2" align="center">
                  <Link
                    to="/forget-password"
                    component={RouterLink}
                    className={classes.link}
                  >
                    Forgot Password?
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
            Don't have an account?
          </Typography>

          <Typography variant="body2" align="center">
            <Link to="/signup" component={RouterLink} className={classes.link}>
              Sign Up
            </Link>
          </Typography>
        </Box>
      </Box>
    </Box>
  )
}

export default Login
