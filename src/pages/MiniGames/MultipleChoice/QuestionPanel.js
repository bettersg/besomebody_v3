import React,{useState} from 'react';
import { makeStyles } from '@material-ui/core/styles';

import {
  Box,
  Button,
  ButtonBase,
  Card,
  CardMedia,
  CardActionArea,
  CardContent,
  Divider,
  Grid,
  Typography
} from '@material-ui/core'
import './QuestionPanel.css'


const useStyles = makeStyles((theme) => ({
  root: {
    textAlign:'left',
    padding:10
  },

  question:{
    color:'black',
  },

  bar: {
    height: 16,
    borderRadius: 20,
  },

  media: {
    height: 120,
  },

  title: {
    fontSize: "1rem",
  }

}));

export default function QuestionPanel({question, nextQuestion, total, questionNo, checkUserAnswer,continueToStory, userAnswers}) {

  const [answered,setAnswered] = useState('');
  const [message,setMessage]=useState(''); 

  const getUi = ({question,answer,answered,handleAnswer}) => {
  


    switch(question.type){
  
      case("text"): {
        return (
          <Button 
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
              <Card className={classes.imageCard} p={0} m={0}>
                <CardActionArea>
                <CardMedia
                  className={classes.media}
                  image={'/images/' + answer.imageUrl}
                />
                <CardContent >
                  <Typography className={classes.title}>
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
    if(question.correctAnswer===answer){
      setMessage('Correct!')
    }
    else{
      setMessage('Wrong! '+explanation)
    }
  }
  // console.log(userAnswers);
  const classes = useStyles();

  return (
  
  
    <>
        <Card className={classes.root}>
          <CardActionArea>  
            <CardContent>
              <Typography variant="h5" >
                Question {questionNo} of {total}
              </Typography>
              <Divider/>
              <Typography  color="textSecondary" className={classes.question}>
                {question['question']}
              </Typography>
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
          <Typography>
              {answered && message}
          </Typography>
            
          {answered!=='' && questionNo!==total &&
            <Button variant="contained" 
              className="nextButton"
              color="secondary" key="next" onClick={()=>{nextQuestion(); setAnswered('');}} 
              >
                Next Question
          </Button>
          }

          {answered!=='' && questionNo===total &&
            <Button variant="contained" 
              className="nextButton"
              color="secondary" key="next" onClick={()=>{continueToStory();}} 
              >
                Back to Story
            </Button>
          } 
  
        </Card>
    </>
  );
}