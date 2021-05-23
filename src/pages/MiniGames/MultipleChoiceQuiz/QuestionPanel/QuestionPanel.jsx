import React,{useState} from 'react';
import {lighten, makeStyles } from '@material-ui/core/styles';
import Box from '@material-ui/core/Box';
import Container from '@material-ui/core/Container';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import Divider from '@material-ui/core/Divider';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import './QuestionPanel.css';


const useStyles = makeStyles({
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
});

export default function QuestionPanel({question, nextQuestion, total, questionNo, progress, checkUserAnswer,maxScore, score}) {
  const [answered,setAnswered] = useState('');
  const [message,setMessage]=useState(''); 
  
  const handleAnswer = (ans) =>{
    setAnswered(ans);
    checkUserAnswer(ans);
    if(decodeURIComponent(question['correct_answer'])==ans){
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
              <Typography variant="p" component="h3">
                Question {questionNo} of {total}
              </Typography>
              <Divider/>
              <Typography  variant="body1" color="textSecondary" component="p" className={classes.question}>
                {decodeURIComponent(question['question'])}
              </Typography>
            </CardContent>
          </CardActionArea>

            { question['answers'].map(key =>
                <Button 
                      fullWidth={true}
                      variant={answered === decodeURIComponent(key)? "contained" :"outlined"} 
                      color="primary" 
                      key={decodeURIComponent(key)} 
                      onClick={()=>handleAnswer(decodeURIComponent(key))}
                      disabled={answered!==''?true : false}
                >
                        {decodeURIComponent(key)}
                </Button>
              )
            }
            

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