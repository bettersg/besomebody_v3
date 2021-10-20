import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import { Box } from '@material-ui/core'


// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: `url('/images/bg_reflections.jpg')`,
    backgroundColor: "#664EFC", 
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0,
    overflow:'hidden',
    padding: 0, 
  },
}))

function Frame({ children }) {
  const classes = useStyles();

  return (
    <Box className={`${classes.background}`}>
      {children}
    </Box>
  );
}

export default Frame;
