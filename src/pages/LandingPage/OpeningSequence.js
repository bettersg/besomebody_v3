import React, { useEffect, useState } from 'react'
import { Box, Button, Fade, Typography } from '@material-ui/core'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import Avatar from '@material-ui/core/Avatar';
import makeStyles from '@material-ui/core/styles/makeStyles'
import "./style.scss"
import { Link , useHistory } from 'react-router-dom'


const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundImage: "url('/images/bg_nadia_schoolcanteen.jpg')",
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
    height: '70px', 
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
  }
}))




const introParagraphs = {
  steps:  [
  {
    step:1,
      "text": "Heya! Thanks for being curious about what it's like to be me.",
    "choices": null,
  },
  { step:2,
    "text": "It's a pretty simple game. You'll play as me (and other characters), and make choices that have consequences. If you have questions, you can always go to the menu to find help.",
    "choices": [ "I understand", "Let's go!"],
  },
  { step:3,
    "text": "Ok, so you seem to get how this works. Since you'll be me, you can also hear my thoughts.",
    "tags": "inner_monologue",
    "choices":null,
  },
  { step:4,
    "text": "Ok, ok - you're clearly excited to play. You'll find out more about me as you play the game, but first, I would like to find out more about you.",
    "choices":null,
  },
  { step:5,
    "text": "To play the game, we'll need to create an account for you using your email address and a password. We will only use this to save your game, and we won't use it for anything else.",
    "choices":null,
  },
]}


const OpeningSequence = () => {
  
  const [step, setStep] = useState(1)
  const [values, setValues] = useState({})
  
  const classes = useStyles()
  const history = useHistory()

// functions 
    
    function setChoice() {
        console.log('do nothing')
    }
 
    
  return (
    <Fade  in={true} timeout={500}>
      <div className="ScenePage">        
        <div className="ScenePage__speaker">
          <img src="/images/cha_nadia_intro.png"  className="ScenePage__speaker--left"/>            
        </div>
      <Box className={classes.paragraphWrapper}  height="100%">
          <div>
          {introParagraphs.map((step, index) => (
               
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
            {step > introParagraphs.steps.length && history.push('/signup')}
            
            
            {/* {step.choices.length > 0 ?
                <div className="ScenePage__choicesWrapper" >
                  {step.choices.map((choice) => (                  
                    <Box
                      key={choice.text}
                      className="ScenePage__choicesWrapper__choices"
                    >
                      <Fade in={choice.text} timeout={500}>
                        <Button
                          variant="contained"
                          color="primary"
                          onClick={() => setStep(step + 1)}
                          className={classes.choicesButton}
                        >
                          <Typography variant="caption">{choice.text}</Typography>
                        </Button>
                      </Fade>
                    </Box>
                    
                  ))}
                </div>
              :
              step <= introParagraphs.steps.length && (
                <div className={classes.nextButton} onClick={() => setStep(step + 1)}>
                  <Avatar className={classes.avatar}><ExpandMoreIcon color="white" fontSize="large" /> </Avatar>
                </div>
              )

              } */}
      </div>
    </Box>
    
      
      </div>
        
    </Fade>
  )
}

export default OpeningSequence;


