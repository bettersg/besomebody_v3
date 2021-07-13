/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { Link as RouterLink, useHistory } from 'react-router-dom'
import {
  Box,
  Button,
  Card,
  CardContent,
  CardHeader,
  CardActions,
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
    
  },
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_launch.png')`,    
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '100vh',
    [theme.breakpoints.up('xs')]: {
      height: '660px',
    },
    bottom: 0, 

  },
  card: {
    background: "rgba(255,255,255,0.9)",    
    paddingBottom: 30,
  },
  header: {
    marginTop: 100,
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#664EFC',
    backgroundColor: '#664EFC',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',      
    },
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
          message: 'You did not input your Email',
          open: true,
          type: 'error',
        })
      }
      case !values.password: {
        return setSnackbar({
          message: 'You did not input a Password',
          open: true,
          type: 'error',
        })
      }
      case values.password.length < 6: {
        return setSnackbar({
          message: 'Password should be > 6 characters',
          open: true,
          type: 'error',
        })
      }
      case !values.confirmPassword: {
        return setSnackbar({
          message: 'You did not confirm your password',
          open: true,
          type: 'error',
        })
      }
      case values.confirmPassword !== values.password: {
        return setSnackbar({
          message: 'The passwords do not match',
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
          history.push('/profilebuilder')
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
    <Box className={classes.background}>
      <Box  mx="auto">
        <Card raised={true}  className={classes.card}>
          <CardHeader
            title="Sign Up"
            titleTypographyProps={{ variant: 'h4', align: 'center' }}
            class={classes.header}
          />
          <CardContent>
            <form onSubmit={handleSubmit(beforeSubmit)}>
              <Grid container spacing={1}>
                <Grid item xs={3}>
                  <Typography variant="caption">Email:</Typography>
                </Grid>
                <Grid item xs={9}>
                  <Controller
                    as={TextField}
                    control={control}
                    name="email"
                    type="email"
                    placeholder="your@emailaddress.com"
                    required
                    fullWidth
                  />
                </Grid>
                <Grid item xs={3}>
                  <Typography variant="caption">Password:</Typography>
                </Grid>
                <Grid item xs={9}>
                  <Controller
                    as={TextField}
                    control={control}
                    name="password"
                    type="password"
                    placeholder="Password > 6 characters"
                    required
                    fullWidth
                  />
                </Grid>
                <Grid item xs={3}>
                  <Typography variant="caption">Confirm Password:</Typography>
                </Grid>
                <Grid item xs={9}>
                  <Controller
                    as={TextField}
                    control={control}
                    name="confirmPassword"
                    type="password"
                    placeholder="Repeat the password"
                    required
                    fullWidth
                  />
                </Grid>
              </Grid>

              <Box mt={2} display="flex" justifyContent="center">
                <Button
                  type="submit"
                  variant="contained"
                  className={classes.btn}
                  disabled={isSubmitting || isLoading}
                >
                  Submit
                </Button>
              </Box>
            </form>

            
          </CardContent>
          <CardActions>
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
          </CardActions>
        </Card>

       
      </Box>
    </Box>
  )
}

export default SignUp
