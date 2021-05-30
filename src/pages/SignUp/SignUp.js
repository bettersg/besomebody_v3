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
import { createDbUser } from '../../models/userModel'
import { useSnackbar } from '../../contexts/SnackbarContext'

const useStyles = makeStyles((theme) => ({
  link: {
    marginLeft: theme.spacing(1),
    marginRight: theme.spacing(1),
    color: theme.palette.primary.main,
  },
}))

const SignUp = () => {
  const classes = useStyles()
  const history = useHistory()

  const [isLoading, setIsLoading] = useState(false)

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  // Auth Context
  const { signUp } = useAuth()

  // Init form
  const defaultValues = {
    email: '',
    password: '',
    confirmPassword: '',
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
      case values.password.length < 6: {
        return setSnackbar({
          message: 'Password should be at least 6 characters',
          open: true,
          type: 'error',
        })
      }
      case !values.confirmPassword: {
        return setSnackbar({
          message: 'Confirm password is required',
          open: true,
          type: 'error',
        })
      }
      case values.confirmPassword !== values.password: {
        return setSnackbar({
          message: 'Passwords do not match',
          open: true,
          type: 'error',
        })
      }
      default: {
        try {
          setIsLoading(true)
          const result = await signUp(values.email, values.password)
          const user = {
            email: result.user.email,
            id: result.user.uid,
          }
          await createDbUser(user)
          // history.push('/')
          history.push('profilebuilder')
        } catch (err) {
          setSnackbar({
            message: `Failed to sign up: ${err.message}`,
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
            title="Sign Up"
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
                <Grid item xs={2}>
                  <Typography variant="body1">Confirm Password:</Typography>
                </Grid>
                <Grid item xs={10}>
                  <Controller
                    as={TextField}
                    control={control}
                    name="confirmPassword"
                    type="password"
                    placeholder="Enter your confirm password here"
                    required
                    fullWidth
                  />
                </Grid>
              </Grid>

              <Box mt={2} display="flex" justifyContent="center">
                <Button
                  type="submit"
                  variant="contained"
                  color="primary"
                  disabled={isSubmitting || isLoading}
                >
                  Submit
                </Button>
              </Box>
            </form>
          </CardContent>
        </Card>

        <Box maxWidth={700} mt={3} mx="auto">
          <Typography variant="body2" align="center">
            Already have an account?
          </Typography>
          <Typography variant="body2" color="primary" align="center">
            <Link to="/login" component={RouterLink} className={classes.link}>
              Log In
            </Link>
          </Typography>
        </Box>
      </Box>
    </Box>
  )
}

export default SignUp
