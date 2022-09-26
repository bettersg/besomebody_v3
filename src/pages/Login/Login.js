/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { Link as RouterLink, useHistory } from 'react-router-dom'
import {
  Box,
  Button,
  Card,
  CardContent,
  CardHeader,
  Divider,
  Grid,
  Link,
  TextField,
  Typography,
} from '@material-ui/core'
import { makeStyles } from '@material-ui/core/styles'
import { Controller, useForm } from 'react-hook-form'
import { useAuth } from '../../contexts/AuthContext'
import { createDbUserIfNotExists } from '../../models/userModel'
import { useSnackbar } from '../../contexts/SnackbarContext'
import StyledFirebaseAuth from 'react-firebaseui/StyledFirebaseAuth';
import firebase from "../../firebase";
import { RoomContext } from '../../contexts/RoomContext'


// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  link: {
    marginLeft: theme.spacing(1),
    marginRight: theme.spacing(1),
    color: theme.palette.primary.main,
  },
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_launch.png')`,    
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

  },
  card: {
    background: "rgba(255,255,255,0.9)",    
  },
  divider: {
    margin: "24px 0"
  },
  grid: {
    height: '100%',
  },
  header: {
    marginTop: 100,
  },
  overline: {
    backgroundColor: '#6C70DD',
    color: '#ffffff',
    width: '100%',
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
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

const Login = () => {
  const firebaseUIConfig = {
    signInFlow: 'redirect',
    signInOptions: [
      firebase.auth.GoogleAuthProvider.PROVIDER_ID,
      firebase.auth.FacebookAuthProvider.PROVIDER_ID,
    ],
    callbacks: {
      signInSuccessWithAuthResult: (authResult, redirectUrl) => {
        attemptLogin(true, null, authResult)
        return false
      },
    },
  };

  const classes = useStyles()
  const history = useHistory()

  const [isLoading, setIsLoading] = useState(false)

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  // Auth Context
  const { login } = useAuth()

  // Room Context
  const { roomValue, roomCodeValue } = React.useContext(RoomContext);
  const [room, setRoom] = roomValue;
  const [roomCode, setroomCode] = roomCodeValue;
  // console.log(room)
  console.log(roomCode)

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

  const attemptLogin = async (isThirdPartyAuth, formValues, authResult) => {
    try {
      setIsLoading(true)
      if (!isThirdPartyAuth) {
        await login(formValues.email, formValues.password)
        if (roomCode) { // check if the user is in a room, and if so, push them to the roomInfo page instead.         
          history.push('/room/' + roomCode)
        }
        else {          
          history.push('/')
        }
      } else {
        const user = {
          email: authResult.user.email, // @joel this is where the email address gets added to the user collection using the createDbUserIfNotExists function. Need your help to verify how it can be changed witbout breaking the login authentication process.
          id: authResult.user.uid,
        }
        const isCreated = await createDbUserIfNotExists(user)
        if (isCreated) { 
          history.push('/profilebuilder')
          
        }        
        if (roomCode) { // check if the user is in a room, and if so, push them to the roomInfo page instead.
          // console.log('going to room')
          history.push('/room/' + roomCode)
        }
        else {          
          history.push('/')
        }
        
      }

    } catch (err) {
      setSnackbar({
        message: `Failed to log in: ${err.message}`,
        open: true,
        type: 'error',
      })
    }
    setIsLoading(false)
  }

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
        await attemptLogin(false, values)
      }
    }
  }

  return (
    <Box className={classes.background}>
      {roomCode &&
        <Box py={1} textAlign="center" className={classes.overline}>
          <Typography variant="overline" > You are a participant in a facilitated room. </Typography>
        </Box>
      }
      <Grid container alignItems="center" justify="center" className={classes.grid}>
        <Card raised={true}  className={classes.card}>
          <CardContent>
            <StyledFirebaseAuth uiConfig={firebaseUIConfig} firebaseAuth={firebase.auth()} />
            <Typography variant="overline" display="block"  align="center">
              or
            </Typography>
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
                    Forgot Your Password?
                  </Link>
                </Typography>
              </Box>

              <Box mt={2} display="flex" justifyContent="center">
                <Button
                  variant="contained"
                  color="primary"
                  disabled={isSubmitting || isLoading}
                  type="submit"
                  className={classes.btn}
                >
                  Log in
                </Button>
              </Box>
            </form>
            <Divider className={classes.divider}/>
            <Typography variant="body2" color="primary" align="center">
              <Link to="/signup" component={RouterLink} className={classes.link}>
              Don't have an account? Sign Up
              </Link>
            </Typography>
          </CardContent>
        </Card>
      </Grid>
    </Box>
  )
}

export default Login
