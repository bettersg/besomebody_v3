import React from 'react';
import { Button, Typography, Box , Grid } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import FlagIcon from '@material-ui/icons/Flag';
import FavoriteIcon from '@material-ui/icons/Favorite';
import { useState } from 'react';
import { send } from 'emailjs-com';
import { useAuth } from '../../../contexts/AuthContext'
import { useSnackbar } from '../../../contexts/SnackbarContext'
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';

//import from model 
import { createReflectionLikes } from '../../../models/ReflectionLikes';

const useStyles = makeStyles((theme) => ({
  reflectionBox: {
    background: "linear-gradient(180deg, #FFFCED 0%, #FFF1A7 100%)",
    boxShadow: '0px 4px 8px rgba(0, 0, 0, 0.12)',
    borderRadius: 8,
    padding: "32px 20px",
    margin:10,
  },
  storyText: {
    fontWeight: 500,
    fontSize: 15,
    lineHeight: '150%',
    textAlign: "left", 
  },
  demographicsText: {
    color: '#8A5C00',
    fontWeight: 400,
    textAlign: "left", 
    fontSize: 11,
    textTransform: "capitalize", 

  },
  flag: {
    color: '#3A2A08',
    height: "24px", 
    '&:hover': {
      color: '#ff0000',
      cursor: 'pointer',
      filter: 'invert(23%) sepia(29%) saturate(6407%) hue-rotate(346deg) brightness(101%) contrast(146%)',
    },
  },
  heart:{
    color: '#3A2A08',
    height: "19px", 
    '&:hover': {
      cursor: 'pointer',
      filter: 'invert(23%) sepia(29%) saturate(6407%) hue-rotate(346deg) brightness(101%) contrast(146%)',
    },
  }, 
  demoShareBox:{
    display:"flex", 
    justifyContent: "space-between", 
    alignItems: "center", 
    marginTop:16,
  }

}))



const ChapterResponse = ({ response }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()
  const { setSnackbar } = useSnackbar()

  const [heartSrc, setHeartSrc] = useState("/reflection/reflection_heart.png")
  const [flagSrc, setFlagSrc] = useState("/reflection/reflection_flag.png")

  const responseMessage = response.answer + ' <br/> reflection ID: ' + response.reflectionId + ' <br/> user ID : ' +   response.userId + ' <br/> submitted at ' + response.submittedAt 

  const [toSend, setToSend] = useState({
    from_name: currentUser.email,
    to_name: 'TOBEYOU ADMIN',
    message: responseMessage,
    reply_to: 'tobeyou@better.sg',
  });

  const [open, setOpen] = React.useState(false);

  const handleClickOpen = () => {
    if (flagSrc === "/reflection/reflection_flag_selected.png") {
      setFlagSrc("/reflection/reflection_flag.png")
    } else {
      setOpen(true);
      setFlagSrc("/reflection/reflection_flag_selected.png")
    }

  };

  const handleClose = () => {
    setOpen(false);
  };

  //handle likes 
  const likeReflection = (e) =>{
    e.preventDefault();

    createReflectionLikes(response.id, currentUser.id)
    if (heartSrc === "/reflection/reflection_heart_selected.png") {
      setHeartSrc("/reflection/reflection_heart.png")
    } else {
      setHeartSrc("/reflection/reflection_heart_selected.png")
    }
  }
  //submit the red flag disagreement
  const onSubmit = (e) => {
    e.preventDefault();
    setOpen(false);
    send(
      'service_q3gnqrp',
      'template_r9ys0jd',
      toSend,
      'user_kmfKhjRSSwoovXNarQivp'
    )
      .then((response) => {
        setSnackbar({
          message: 'We have flagged this message to the admins. Thank you!',
          open: true,
          type: 'info',
        })        
        // console.log('SUCCESS!', response.status, response.text);
      })
      .catch((err) => {
        setSnackbar({
          message: `Message did not get delivered: ${err}`,
          open: true,
          type: 'error',
        })        
        // console.log('FAILED...', err);
      });
  };

  // const handleChange = (e) => {
  //   setToSend({ ...toSend, [e.target.name]: e.target.value });
  // };

  

  return (
    <Box className={classes.reflectionBox}>
      <Typography className={classes.storyText}>{response.answer} </Typography>
      <Grid container className={classes.demoShareBox}>
        <Grid item xs={8}><Typography className={classes.demographicsText}>{response.user.race ? response.user.race.toLowerCase() : null}{response.user.gender ? ', ' + response.user.gender.toLowerCase() : null}, ~{response.user.age ? response.user.age : null}{response.user.religion ? ', ' + response.user.religion.toLowerCase() : null}{response.user.housing ? ', ' + response.user.housing.toLowerCase() : null}</Typography></Grid>
        <Grid item xs={1}><img src={heartSrc} onClick={likeReflection} className={classes.heart} /></Grid>
        <Grid item xs={1}><img src={flagSrc} onClick={handleClickOpen} className={classes.flag} /></Grid>
      </Grid>

      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
        maxWidth="xs"
      >
        <DialogTitle id="alert-dialog-title">{"Alert admins to this comment?"}</DialogTitle>
        <DialogContent>
          <DialogContentText id="alert-dialog-description">
            Comments that are disrespectful / obscene / irrelevant will be removed by admins. Comments that contain different views (even those you may disagree with) will be retained, so long as they are phrased respectfully.
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button variant="contained" onClick={onSubmit} color="primary" autoFocus>
            SUBMIT RED FLAG <FlagIcon color="error" fontSize="small"  />
          </Button>
          <Button onClick={handleClose} color="primary">
            CLOSE
          </Button>
        </DialogActions>
      </Dialog>
    </Box>
  )
};

export default ChapterResponse;
