import React, { useEffect, useState } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import Avatar from '@material-ui/core/Avatar';
import makeStyles from '@material-ui/core/styles/makeStyles'
import "./style.scss"
import { Link , useHistory } from 'react-router-dom'


const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: "url('/images/bg_nadia_canteen.jpg')",
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '640px',
    bottom: 0, 
  },
  choiceWrapper: {
    position: 'relative',
    opacity: 0.8,    
    top: '400px',
  }, 
  choicesButton: {
    width: "330px", 
    height: "30px", 
    margin: "auto", 
    borderRadius: "24px", 
    border: "solid 1px #3DCAD328", 
    backgroundColor: "white", 
    color: "#0B6E7D", 
    marginBottom: "10px", 
    '&:hover': {
      backgroundColor: '#B1EAEE',
      borderColor: '#B1EAEE',
      boxShadow: 'none',
    },
  },
  nextButton: {
    bottom: 0,
    right: 0,
    height: '50px', 
    width: '100%' ,
    position: 'absolute',
    textAlign: 'center',
    align: 'center',
  },
  avatar: {
    backgroundColor: "#A7A9EB",
    marginLeft: "auto",
    marginRight: "auto",
    '&:hover': {
      backgroundColor: '#664EFC',
      boxShadow: '2px 2px 4px #aaa',
    },
 },
 overline: {
    backgroundColor: '#664EFC',
    color: '#ffffff',
     width: '100%',  
     position: 'absolute',
    
    },
}))




const introParagraphs = {
  steps:  [
  {
    step:1,
      "text": "Hi there! So you're going to take part in a facilitated room game experience. I'm Nadia, and I'm here to help you understand what's going on.",
  },
  { step:2,
    "text": "If you haven't played the game yet, it's pretty simple. You'll 'be' a character and make choices in an interactive story experience. You'll also do quiz games and share reflections.",
  },
  { step:3,
    "text": "The facilitator will lead a discussion after you play, so reflect on your experience. If a scene make you uncomfortable, consider why that might be the case. ",
  },
  { step:4,
    "text": "As this is a facilitated room, the facilitator will see all the reflections and choices made, but we will hide your actual identity from the other players. ",
  },
  { step:5,
    "text": "Hmm... if the facilitator and other participants can see my reflections, perhaps I should write responsibly.",
    "tags": "inner_monologue",
  },
  { step:6,
    "text": "If you have any questions, you can always go to the menu to find help or contact your facilitator. Now, let's get started! ",    
  },
]}


const FacilitationExplainer = () => {
  
  const [step, setStep] = useState(1)
  const [values, setValues] = useState({})
  
  const classes = useStyles()
  const history = useHistory()

 
    
  return (
      <Box>
        <Box textAlign="center"  className={classes.overline}>
            <Typography variant="overline" > You are a participant in a facilitated room. </Typography>
        </Box>
      <div className="ScenePage">        
        <div className="ScenePage__speaker">
          <img src="/images/cha_nadia_intro.png"  className="ScenePage__speaker--left" style={{ bottom: '160px' }} />            
        </div>
      <Box className={classes.paragraphWrapper}  height="100%">
          <div>
          {introParagraphs.steps.slice(step - 1, step).map((step, index) => (
               
                <div>
                  <div
                    key={step.text}
                    style={{ scrollSnapAlign: 'start' }}
                    className={`ScenePage__story`}
                  >
                  
                {step.tags === 'inner_monologue' ?
                  null : <div className="ScenePage__name" style={{backgroundColor: "#664EFC",width: "120px",bottom: "-20px",}}>  Nadia </div>}

                  
                     
                  
                      <div>
                        {/* this is gradient div for inner monologue */}
                        <div
                          className={step.tags === 'inner_monologue' ? "ScenePage__story__innerMono" : null}
                          style={{ background: `linear-gradient(180deg, rgba(79, 77, 190, 0) 13.02%, #664EFC 100%)` }}
                        ></div>
                        <div
                          className={`ScenePage__story__text ${step.tags === 'inner_monologue' ? "innerMonologue" : "default"}`}
                          style={{ background: step.tags === 'inner_monologue' ? `linear-gradient(180deg, #664EFC 44.7%, #664EFC 100%)` : "white" }}
                        >
                          
                          <div className="ScenePage__story__text--line">{step.text}</div>


                          {/* this if else is needed to toggle between "Next Button" and choices (if any) */}
                          <div
                            style={{
                              backgroundColor: `${step.tags === 'inner_monologue' ? "#664EFC" : "white"}`,
                            
                              background: "linear-gradient(180deg, rgba(177, 234, 238, 0), rgba(177, 234, 238, 50%), #D1D3DD",
                              // paddingTop: `${step.choices.length > 0 ? "62px" : null}`,
                            
                            }}
                    >
                          
                           

                          </div>
                        </div>
                      
                      </div>
                  

                    
                  </div>



                </div>
              
            ))}
            
            {step <= introParagraphs.steps.length && (
              <div className={classes.nextButton} onClick={() => setStep(step + 1)}>
                <Avatar className={classes.avatar}><ExpandMoreIcon color="white" fontSize="large" /> </Avatar>
              </div>
            )}
            {step > introParagraphs.steps.length && history.push('/')}
            
            
         
      </div>
    </Box>
    
      
      </div>
        
    </Box>
  )
}

export default FacilitationExplainer;


