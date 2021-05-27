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
    height: 130,
  },

}));




export default function QuestionPanel({question, nextQuestion, total, questionNo, progress, checkUserAnswer,maxScore, score}) {
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
            key={answer} 
            onClick={()=>handleAnswer(answer)}
            disabled={answered!==''? true : false}
          >
                  {answer}
          </Button>
        )
      }
      
      case('image') : {
        return (
          <Box width={1/4} component="span">
            <ButtonBase 
              variant={answered === answer.title ? "contained" :"outlined"} 
              color="primary" 
              key={answer.title} 
              onClick={()=>handleAnswer(answer.title)}
              disabled={answered!==''? true : false}
            >
              <Card className={classes.imageCard}>
                <CardActionArea>
                <CardMedia
                  className={classes.media}
                  image={'/images/' + answer.url}
                />
                <CardContent>
                  <Typography>
                    {answer.title}
                  </Typography>
                </CardContent>
                </CardActionArea>
              </Card>
            </ButtonBase>
          </Box>
        )
      }
  
    }
  
  }

  const handleAnswer = (ans) =>{
    setAnswered(ans);
    checkUserAnswer(ans);

    
    if(question['correct_answer']==ans){
      setMessage('Correct!')
    }
    else{
      setMessage('Wrong!')
    }
  }

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



            <Box >
            { question['answers'].map(answer =>
                getUi({
                  question,
                  answer,
                  answered,
                  handleAnswer,
                })
              )
            }
            </Box>

            

          <Typography variant="h5" component="h3" className="message">
              {answered && message}
          </Typography>
            
          {answered!=='' && progress !==100? 
            <Button variant="contained" 
              className="next-button" 
              color="secondary" key="next" onClick={()=>{nextQuestion(); setAnswered('');}} 
              >
                Next Question
          </Button>
          
          : ''}
  
        </Card>
        <div className="score-wrapper">
          <p>Score: {score} %</p>
          <p>MaxScore: {maxScore} %</p> 
        </div>
    </>
  );
}