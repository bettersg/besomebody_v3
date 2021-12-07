import React, { useState, useEffect } from "react";

import { useParams, Link , useHistory } from "react-router-dom";

import { Grid, Fab, Box, Typography } from "@material-ui/core";

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
import SideMenu from '../../pages/SimpleSideMenu/SideMenu'
import { MenuItem } from "./MenuItem";


const useStyles = makeStyles((theme) => ({
  root: {
    background: '#eeeeee',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    position: "absolute", 
    top: 0, 
    width:"100%", 
  },
  topBar: {
    background: "white", 
    height: 68, 
    padding: 28, 
    display: "flex", 
    alignItems:"center", 
    position: "absolute", 
    top: 0, 
    width:"100%", 
  }, 
  accountMenu: {
    marginTop: 75, 
  }
}));

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
      <Box className={classes.root} >
        <div>
            <Box className={classes.topBar}>
              <img src="/account_page/left-arrow.png" width="8px" style={{marginRight: "18px"}}/>
              <Typography style={{fontWeight:700}}>Account</Typography>
            </Box>
            <SideMenu  />
        </div>
        <div className={classes.accountMenu}>
          <MenuItem logo="/account_page/profile.png" name="Your Profile" description={`${user.age ? user.age + ", " : ""}${user.gender ? user.gender + ", " : ""}${user.race ? user.race + ", " : ""}${user.religion ? user.religion + ", " : ""}${user.housing ? user.housing + ", " : ""}`} editRedirect="/profilebuilder"/>
          <MenuItem logo="/account_page/email.png" name="Email" description={`${user.email ? user.email : ""}`} />
          <MenuItem logo="/account_page/password.png" onClick={() => handleResetPassword()} name="Reset Password"/>
          <MenuItem logo="/account_page/logout.png" onClick={logoutUser} name="Logout"/>
        </div>
        {/* <UserCard user={user} />
        <br />
        <Box className={classes.root}>
          <Link to="/">Back to Main Menu</Link> <br />
          <Link onClick={() => history.goBack()}>Return to Game</Link> <br />
          <hr />
          <Link onClick={() => handleResetPassword()}>Reset your password</Link> <br />
          <Link to="/profilebuilder">Rebuild Your Profile</Link> <br />
          <Link to="/" onClick={logoutUser}><span>Sign Out</span></Link> <br />
        </Box> */}
      </Box>       
    );
  }

  return (
    <>
      <div className="game-menu">
            <SideMenu  />
        </div>
      <EmptyState
      image={<NoDataIllustration />}
      title="No profile."
      description="The user hasn‘t setup their profile."
      />
    </>
  );
}

export default UserPage;
