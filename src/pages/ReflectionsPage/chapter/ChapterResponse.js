import React from 'react';
import { Button, Typography, Box , Grid } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'
import FlagIcon from '@material-ui/icons/Flag';
import { useState } from 'react';
import { send } from 'emailjs-com';
import { useAuth } from '../../../contexts/AuthContext'
import { useSnackbar } from '../../../contexts/SnackbarContext'


const useStyles = makeStyles((theme) => ({
  reflectionBox: {
    backgroundColor: "#26248F", 
    boxShadow: '0px 4px 8px rgba(0, 0, 0, 0.12)',
    borderRadius: 8,
    padding: 10,
    margin:10,
  },
  storyText: {
    color: '#ffffff',
    fontWeight: 500,
    fontSize: 15,
    lineHeight: '150%',
  },
  demographicsText: {
    color: '#E2E2F8',
    marginTop:10,
    fontWeight: 400,
    fontSize: 12,
  },
  flag: {
    color: '#E2E2F8',
    marginTop: 10,
    
    '&:hover': {
      color: '#ff0000',
      cursor: 'pointer',
    },
  }
}))



const ChapterResponse = ({ response }) => {
  const classes = useStyles()
  const { currentUser } = useAuth()
  const { setSnackbar } = useSnackbar()

  const responseMessage = response.answer + ' <br/> reflection ID: ' + response.reflectionId + ' <br/> user ID : ' +   response.userId + ' <br/> submitted at ' + response.submittedAt 

  const [toSend, setToSend] = useState({
    from_name: currentUser.email,
    to_name: 'TOBEYOU ADMIN',
    message: responseMessage,
    reply_to: 'tobeyou@better.sg',
  });


  const onSubmit = (e) => {
    e.preventDefault();
    send(
      'service_mxyo80c',
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
      <Typography className={classes.storyText}>{response.answer} </Typography> <br/>
      <Grid container >
        <Grid item xs={10}><Typography className={classes.demographicsText}>~{response.user.age ? response.user.age + ' YRS OLD' : null} {response.user.race ? ' | ' + response.user.race : null}  {response.user.religion ? ' | ' + response.user.religion : null}   {response.user.gender ? ' | ' + response.user.gender : null}  {response.user.housing ? ' | ' + response.user.housing : null}</Typography></Grid>
        <Grid item xs={2}><FlagIcon className={classes.flag} fontSize="small"  onClick={onSubmit}/></Grid>
      </Grid>
    </Box>
  )
};

export default ChapterResponse;
