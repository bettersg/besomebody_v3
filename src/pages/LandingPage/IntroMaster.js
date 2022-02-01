import React, { useState } from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
// import { Alert } from '@material-ui/lab'
import { useAuth } from '../../contexts/AuthContext'
import { Link , useHistory, useParams} from 'react-router-dom'
import makeStyles from '@material-ui/core/styles/makeStyles'
import OpeningSequence from './OpeningSequence'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
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
    
  }))
  
const IntroMaster = (props) => {
    // const { introParagraphs } = props;
    // const { roomCode } = props;
    const [isLoading, setIsLoading] = useState(false)
    
    const classes = useStyles()  
    const history = useHistory()
    // const { roomCode } = useParams()
   
    // console.log(roomCode)
    
    return (
      <Box className={classes.background}>
      
        <OpeningSequence />
         
      </Box>
    )
  }
  
  export default IntroMaster;




// introParagraphs = [
//         { "text": "Oi! Focus la. You’re double-packing the fruits.\n" , "tags":"inner_monologue" },
//         {"text":"Second line la.\n", "tags":"speaker_self"},
//     ];