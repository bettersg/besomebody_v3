import React from 'react';
import { Typography, Box } from '@material-ui/core'
import makeStyles from '@material-ui/core/styles/makeStyles'

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
}))



const ChapterResponse = ({ response }) => {
  const classes = useStyles()
  return (
    <Box className={classes.reflectionBox}>
      <Typography className={classes.storyText}>{response.answer} </Typography> <br/>
      <Typography className={classes.demographicsText}>~{response.user.age? response.user.age + 'years old' : null} {response.user.race? ' | ' + response.user.race : null }  {response.user.religion? ' | ' + response.user.religion : null }   {response.user.gender? ' | ' + response.user.gender : null }  {response.user.housing? ' | ' + response.user.housing : null }</Typography>
    </Box>
  )
};

export default ChapterResponse;
