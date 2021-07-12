import React, { useState, useEffect } from "react";

import { useParams, Link , useHistory } from "react-router-dom";

import { Grid, Fab, Box } from "@material-ui/core";

import { makeStyles } from "@material-ui/core/styles";

import { Refresh as RefreshIcon, Home as HomeIcon } from "@material-ui/icons";

import { firestore } from "../../firebase";

import EmptyState from "../EmptyState";

import Loader from "../Loader";
import UserCard from "../UserCard";

import { ReactComponent as ErrorIllustration } from "../../illustrations/error.svg";
import { ReactComponent as NoDataIllustration } from "../../illustrations/no-data.svg";

import { useAuth } from '../../contexts/AuthContext'
import { useSnackbar } from '../../contexts/SnackbarContext'


const useStyles = makeStyles({
  root: {
    background: '#eeeeee',
    borderRadius: 3,
    color: 'black',
    height: 200,
    padding: '50px 30px',
  },
});

function UserPage() {
  const [loading, setLoading] = useState(true);
  const [user, setUser] = useState(null);
  const [error, setError] = useState(null);
  const { userId } = useParams();
  const classes = useStyles();
  const history = useHistory()
  const { logout, resetPassword } = useAuth()
  const { setSnackbar } = useSnackbar()


  useEffect(() => {
    return firestore
      .collection("users")
      .doc(userId)
      .onSnapshot(
        (snapshot) => {
          setLoading(false);
          setUser(snapshot.data());
        },
        (error) => {
          setLoading(false);
          setError(error);
        }
      );
  }, [userId]);

  if (error) {
    return (
      <EmptyState
        image={<ErrorIllustration />}
        title="Couldn’t retrieve user."
        description="Something went wrong when trying to retrieve the requested user."
        button={
          <Fab
            variant="extended"
            color="primary"
            onClick={() => window.location.reload()}
          >
            <Box clone mr={1}>
              <RefreshIcon />
            </Box>
            Retry
          </Fab>
        }
      />
    );
  }

  if (loading) {
    return <Loader />;
  }

  if (!user) {
    return (
      <EmptyState
        image={<NoDataIllustration />}
        title="User doesn’t exist."
        description="The requested user doesn’t exist."
        button={
          <Fab variant="extended" color="primary" component={Link} to="/">
            <Box clone mr={1}>
              <HomeIcon />
            </Box>
            Home
          </Fab>
        }
      />
    );
  }

  const hasProfile = user.email;


  const handleResetPassword = async () => {
    try {          
      await resetPassword(user.email)
      setSnackbar({
        message: `We have sent you a reset password link`,
        open: true,
        type: 'success',
      })
      
    } catch (err) {
      setSnackbar({
        message: `Failed to log out: ${err.message}`,
        open: true,
        type: 'error',
      })
    }       
  }
  
  const logoutUser = async () => {
        try {          
          await logout()
          history.push('/')
        } catch (err) {
          setSnackbar({
            message: `Failed to log out: ${err.message}`,
            open: true,
            type: 'error',
          })
        }       
  }


  if (hasProfile) {
    return (
      <Box >
        <UserCard user={user} />
        <br />
        <Box className={classes.root}>
          <Link to="/">Back to Main Menu</Link> <br />
          <Link onClick={() => history.goBack()}>Return to Game</Link> <br />
          <hr />
          <Link onClick={() => handleResetPassword()}>Reset your password</Link> <br />
          <Link to="/profilebuilder">Rebuild Your Profile</Link> <br />
          <Link to="/" onClick={logoutUser}><span>Sign Out</span></Link> <br />
        </Box>
      </Box>       
    );
  }

  return (
    <EmptyState
      image={<NoDataIllustration />}
      title="No profile."
      description="The user hasn‘t setup their profile."
    />
  );
}

export default UserPage;
