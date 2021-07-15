import React,{useState} from 'react';
import clsx from  'clsx';
import { makeStyles } from '@material-ui/core/styles';
import {
  Box,
  Button,
  ButtonBase,
  Card,
  CardMedia,
  CardActionArea,
  CardContent,
  Drawer,
  Grid,
  Typography
} from '@material-ui/core';
import './QuestionPanel.scss';


const useStyles = makeStyles((theme) => ({
  root: {
    textAlign:'left',
    padding:10
  },

  questionNumber: {
    color:'gray',
    fontSize:"1rem",
    fontWeight: 700,
    textTransform: "uppercase",
    marginBottom: "5px",
  },

  questionWrapper: {
    paddingRight: "50px",
  },

  question:{
    color:'#444444',
    fontWeight: 600,
    fontSize:"1.15rem",
    marginBottom: "5px",
  },

  answerHeader:{
    color:'#444444',
    fontWeight: 700,
    fontSize:"1.15rem",
    marginBottom:"5px",
  },

  nextButton: {
    borderRadius: 10,
    border: 0,
    color: 'white',
    height: 48,
    padding: '0 30px',
    boxShadow: '0 3px 5px 2px rgba(255, 105, 135, .3)',
  },

  nextButtonCorrect: {
    background: '#009900',
    '&:hover': {
      background: '#006633',
    },
  },

  nextButtonWrong: {
    background: '#990000',
    '&:hover': {
      background: '#660000',
    },
  },

  textButton:{
    color:'#555555',
    fontWeight: 700,
    fontSize:"0.7rem",
    marginBottom: "10px",
    border: "1px solid #3dcad3",

    '&:hover': {
      border: "1px solid #3dcad3",
      backgroundColor: '#3dcad3',
      color: '#3c52b2',
    },
  },

  imageButton:{
    borderRadius: "1em",
    border: "1px solid #3dcad3",
    '&:hover': {
      border: "1px solid #3dcad3",
      backgroundColor: '#3dcad3',
      color: '#3c52b2',
    },
  },

  paper: {
    background: "#CCFFCC",

  },

  answerWrapper: {
    padding: "20px",
  },

  bar: {
    height: 16,
    borderRadius: 20,
  },

  media: {
    height: 80,
  },

  imageTitle: {
    color:'#555555',
    fontWeight: 700,
    fontSize:"0.7rem",
  }

}));

export default function QuestionPanel({question, nextQuestion, total, questionNo, checkUserAnswer,continueToStory,isDrawerOpen, isCorrectAnswer}) {

  const [answered,setAnswered] = useState('');
  const [message,setMessage]=useState(''); 
  

  const classes = useStyles();

  const getUi = ({question,answer,answered,handleAnswer}) => {
  
    switch(question.type){
  
      case("text"): {
        return (
          <Button 
            className={classes.textButton}
            fullWidth={true}
            variant={answered === answer ? "contained" :"outlined"} 
            color="primary" 
            key={answer.title} 
            onClick={()=>handleAnswer(answer.title,question.explanation)}
            disabled={answered!==''? true : false}
          >
                  {answer.title}
          </Button>
        )
      }
      
      case('image') : {
        return (
            <Grid 
              key={answer.title} 
              item
              xs={6}
              
            > 
            <ButtonBase 
              
              variant={answered === answer.title ? "contained" :"outlined"} 
              color="primary" 
              onClick={()=>handleAnswer(answer.title,question.explanation)}
              disabled={answered!==''? true : false}
            >
              <Card className={ clsx(classes.imageCard, classes.imageButton)} p={0} m={0} >
                <CardActionArea>
                <CardMedia
                  className={classes.media}
                  image={'/images/' + answer.imageUrl}
                />
                <CardContent >
                  <Typography className={classes.imageTitle}>
                    {answer.title}
                  </Typography>
                </CardContent>
                </CardActionArea>
              </Card>
            </ButtonBase>

            </Grid>

        )
      }

      default : {
        return <Box></Box>
      }
  
    }
  
  }

  const handleAnswer = (answer,explanation) =>{
    setAnswered(answer);
    checkUserAnswer(answer);
    if(question.correctAnswer!==answer){setMessage(explanation)}
  }

  return (
  
  
    <>
        <Card className={classes.root}>
          <CardActionArea>  
            <CardContent>
              <Typography variant="h5" className={classes.questionNumber}>
                Question {questionNo} of {total}
              </Typography>
              <Box className={classes.questionWrapper}>
              <Typography  color="textSecondary" className={classes.question}>
                {question['question']}
              </Typography>
              </Box>
              
            </CardContent>
          </CardActionArea>
            <Box m={2}>
            <Grid 
              spacing={2}
              container
              direction="row"
              justify="center"
              alignItems="center"
            >
            { question['answers'].map(answer =>
                getUi({
                  question,
                  answer,
                  answered,
                  handleAnswer,
                })
              )
            }
            </Grid>
            </Box>
          <Drawer anchor="bottom" open={isDrawerOpen}>
              <Box display="flex" p={1} className={classes.answerWrapper}>
                <Box flexGrow={1}>
                  {answered && 
                  <>
                    <Typography variant="h5" className={classes.answerHeader} >
                      {isCorrectAnswer? 'Correct!' : 'Not Quite Right...'}
                    </Typography>
                    <Typography variant="body" className="answerBody">
                      {message}
                    </Typography>
                  </>
                  }
                  
                </Box>
                <Box>
                  {answered!=='' &&
                    <Button 
                      variant="contained" 
                      className={clsx(classes.nextButton, isCorrectAnswer? classes.nextButtonCorrect : classes.nextButtonWrong )}
                      key="next" onClick={()=>{nextQuestion(); setAnswered('');}} 
                      >
                        Next
                    </Button>
                  }
                  </Box>
              </Box>
              
          </Drawer>
  
          
  
        </Card>
    </>
  );
}