import React, { useState } from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
// import { Alert } from '@material-ui/lab'
import { useAuth } from '../../contexts/AuthContext'
import { Link , useHistory} from 'react-router-dom'
import makeStyles from '@material-ui/core/styles/makeStyles'
import OpeningSequence from './OpeningSequence'


const useStyles = makeStyles((theme) => ({
    background: {
      backgroundImage: ({ image }) => `url('/images/bg_launch.png')`,
      backgroundSize: 'cover',
      backgroundPosition: 'center',
      height: '100vh',
      [theme.breakpoints.up('md')]: {
        height: '660px',
      },
      bottom: 0, 
  
    },
    
  }))
  
const IntroMaster = (props) => {
    // const { introParagraphs } = props;
    const [isLoading, setIsLoading] = useState(false)
    
    const classes = useStyles()  
    const history = useHistory()
   
   
    
    return (
      <Box >
        
        <OpeningSequence />
           
          
        
   
   
  
        
      </Box>
    )
  }
  
  export default IntroMaster;




// introParagraphs = [
//         { "text": "Oi! Focus la. You’re double-packing the fruits.\n" , "tags":"inner_monologue" },
//         {"text":"Second line la.\n", "tags":"speaker_self"},
//     ];