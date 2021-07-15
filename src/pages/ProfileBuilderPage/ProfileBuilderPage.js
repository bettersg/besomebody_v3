import React, { useState, useEffect } from 'react';
import {
    Box,
    Button,     
    Fade,    
    FormLabel,
    FormControlLabel,
    Grid,
    Checkbox,
    RadioGroup,
    Radio,
    TextField,
    Typography,
    Container,
} from '@material-ui/core'
import { Link , useHistory } from 'react-router-dom'
import { makeStyles } from '@material-ui/core/styles'
import { useAuth } from '../../contexts/AuthContext'
import { updateDbUser } from '../../models/userModel'
import { useSnackbar } from '../../contexts/SnackbarContext'
import NextButton from '../../components/NextButton'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import { Steps, Step } from "react-step-builder";
import Step0 from './Step0'
import Step1 from './Step1'
import Step2 from './Step2'
import Step3 from './Step3'
import Step4 from './Step4'
import Step5 from './Step5'
import Step6 from './Step6'
import Step7 from './Step7'


import './style.scss'


const profileParagraphs = {
  steps:  [
  {
    step:1,
      "text": "I'll need to understand you better by asking a few personal questions. We only use the data to make the game more relevant to you, and we will not share the data with anybody. If you're not comfortable answering any of these questions, you can just skip that question.",
      "choices": null,
     "tags": "speaker"
  },
  { step:2,
    "text": "If you're not comfortable answering any of these questions, you can just skip that question.",
    "choices": null,
    "tags": "speaker",
  },
  { step:3,
    "text": "First, what ethnicity or racial group do you identify as? If it's a complex one, just type under OTHER.",
    "tags": "speaker",
    "choices": ["Chinese", "Indian", "Malay", "Other"],
    "tags": "speaker"
  },
  { step:4,
    "text": "Ok, ok - you're clearly excited to play. You'll find out more about me as you play the game, but first, I would like to find out more about you.",
    "choices": null,
    "tags": "speaker"
  },
  { step:5,
    "text": "To play the game, we'll need to create an account for you using your email address and a password. We will only use this to save your game, and we won't use it for anything else.",
    "choices": null,
    "tags": "speaker"
  },
]}


const useStyles = makeStyles((theme) => ({
  WhatsappWrapper: {
    backgroundImage: `url('/images/bg_ui_whatsapp.png')`,
    height: '90vh',
    [theme.breakpoints.up('xs')]: {
      height: '660px',
    },
    width: "100%", 
  },
  link: {
      marginLeft: theme.spacing(1),
      marginRight: theme.spacing(1),
      color: theme.palette.primary.main,
    },
    wrapper: {
      height: '660px',
      overflow: 'scroll',    
      },
  }))
  

const ProfileBuilderPage = () => {

    // const history = useHistory()
    
    const classes = useStyles()
    
    // const [step, setStep] = useState(1)
    // const [values, setValues] = useState({})
    
    // Auth Context
    const { currentUser } = useAuth()  
    
    // const { setSnackbar } = useSnackbar()

    // form submission in progress
    // const [isLoading, setIsLoading] = useState(false)

    // const initialFormData = Object.freeze({
    //     age: "",
    //     gender: "",
    //     race: "",
    //     religion: "",
    //     housing: "",
    //     username:"",
    // });
  
    // const [formData, updateFormData] = React.useState(initialFormData);

    // const handleChange = (e) => {
    //     updateFormData({
    //       ...formData,
    
    //       // Trimming any whitespace and convert to uppercase for standardisation
    //       [e.target.name]: e.target.value.trim().toUpperCase()
    //     });        
    // };
    // const formData = {
    //   age: props.state.age,
    //   gender: props.state.gender.toUpperCase(),
    //   race: props.state.race.toUpperCase(),
    //   religion: props.state.religion.toUpperCase(),
    //   housing: props.state.housing.toUpperCase(),
    //   username: props.state.username,
    //   }
  
    // const handleSubmit = async (e) => {
    //     e.preventDefault()
         
    //     // console.log(formData);        
        
    //     try {
    //       setIsLoading(true)          
    //       await updateDbUser(formData, currentUser.id)
    //       history.push('/')  // redirect to root which will be the characterchoice page now.
         
    //     } catch (err) {
    //       setSnackbar({
    //         message: `There was an error: ${err.message}`,
    //         open: true,
    //         type: 'error',
    //       })
    //     }
    //     setIsLoading(false)      
 
    // };
  
    
      
    const Navigation = (props) => {
      // console.log({ props });
      return (
        //  <Button type="primary" onClick={props.prev} style={{ marginRight: 10 }}>
        //       Previous
        //     </Button> */}
        //     {/* <Button type="primary" onClick={props.next}>
        //       Next
        //   </Button> 
           
          <div onClick={props.next}>
            <Box className="Whatsapp__sendWrapper">
              <Box
                className={`Whatsapp__sendWrapper__sendButton choice'
                }`}
              >
                Click to Continue...
              </Box>
              <Box className="Whatsapp__sendWrapper__sendButton--right">
                <ExpandMoreIcon />
              </Box>
            </Box>
          </div>      
      
      );
    };
    const config = {
      navigation: {
        component: Navigation, // a React component with special props provided automatically
        location: "after" // or before
      }
    };
 

  return (
  <Fade in={true} timeout={500}>
    <Box className={classes.WhatsappWrapper}>
    <div className="Whatsapp__header">
      <img 
        src="/images/ico_nadia.png"
        alt="Chat Profile"
        className="Whatsapp__header--profile"
      />
      <div className="Whatsapp__header__description">
        <div className="Whatsapp__header__description--name">Nadia Binte Rahim</div>
        <div className="Whatsapp__header__description--status">Online</div>
      </div>
    </div>    
  
    
    {/* 
      render the form steps and pass required props in
    */}
      <Steps config={config}>
        <Step title="Intro" component={Step0} />
        <Step title="Age" component={Step1} />
        <Step title="Gender" component={Step2} />
        <Step title="Race" component={Step3} />
        <Step title="Religion" component={Step4} />
        <Step title="Housing" component={Step5} />
        <Step title="Username" component={Step6} />
        <Step title="Confirmation" component={Step7} />
      </Steps>

    



        

       
      </Box>
  </Fade>
  );
}
 


export default ProfileBuilderPage;