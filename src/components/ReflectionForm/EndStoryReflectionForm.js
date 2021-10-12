import produce from 'immer';
import { useState } from 'react';
import { Box, Typography, Button, CircularProgress } from '@material-ui/core'
import { makeStyles } from '@material-ui/core/styles';

import QUESTIONS from '../../reflections/questions.json';

import Question from './Question';

import "./style.scss";

const useStyles = makeStyles((theme) => ({
  wrapperContainer: {
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    paddingTop: 0, 
        
    backgroundColor: '#8ADFE5',
    overflow: "auto", 
  }, 
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#172153',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    width: "252px", 
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  formGroup: {
    backgroundColor: 'white',
  },
  subtitle: {
    fontSize: '13px',
    color: 'white',
    fontWeight: 700, 
    fontSize: "13px", 
    letterSpacing: "0.12em",
    marginBottom: "12px", 
  },
  title: {
    fontSize: '24px',
    fontWeight: 'bold',
    color: 'white',
    fontWeight: 900, 
  },
  textField: {
    // backgroundColor: '#e5e5e5',
  },
  chaptFeedbackContainer: {
    height: "151px",
    backgroundColor: "#3835C1",  
    marginTop:"0", 
    paddingTop: "32px", 
  },
  reflectionFormContainer: {
    marginTop: "48px", 
  }, 
  skipButton: {
    color: "#C4C6F1", 
    marginLeft: "20px", 
    fontWeight: 700, 
    fontSize: "13px", 
    letterSpacing: "0.12em",
  }, 
  btnWrapper: {
    display: "flex", 
    justifyContent: "center", 
    alignItems: "center", 
  }
}))

const EndStoryReflectionForm = ({ context, subtitle, title, questions: propsQuestions, onSubmit, onSuccess, onError, chaptFeedback }) => {
  const classes = useStyles();

  const questions = propsQuestions.map(id => QUESTIONS.find(question => question.id === id));

  const [answers, setAnswers] = useState(questions.map(question => {
    switch (question.type) {
      case "MULTI_CHOICE":
        return null;
      case "MULTI_CHOICE_IMAGE":
        return null;
      case "LIKERT_SCALE":
        return 50;
      case "OPEN":
        return "";
      default:
        return "";
    }
  }));
  const [isLoading, setIsLoading] = useState(false);

  const handleSubmit = async () => {
    try {
      setIsLoading(true);
      await onSubmit?.(answers);
      setIsLoading(false);
      onSuccess?.();
    } catch (error) {
      setIsLoading(false);
      onError?.(error);
    }
  };

  return (
    <Box pt={6} pb={2} className={`${classes.wrapperContainer} chaptFeedbackContainer`}>
      <Box className={`${chaptFeedback ? classes.chaptFeedbackContainer : classes.reflectionFormContainer} `  }>
        {chaptFeedback ? 
          <Box>
            <Typography className={classes.skipButton}> 
            {/* TODO: need onclick function to skip the page */}
              SKIP
            </Typography>
          </Box>
         : null
        }
        <Box>
          <Typography className={classes.subtitle} variant="subtitle1" align="center">
            {subtitle ?? 'SHARE YOUR THOUGHTS WITH US'}
          </Typography>
        </Box>
        <Box>
          <Typography className={classes.title} variant="h1" align="center">
            {title ?? 'REFLECTIONS FORM'}
          </Typography>
        </Box>
      </Box>
      {questions.map((question, index) => (
        <Box key={question.id} mt={2}  className={classes.container}>
          <Question
            key={question.id}
            question={question}
            context={context}
            value={answers[index]}
            onChange={answer => setAnswers(
              produce(draftAnswers => {
                draftAnswers[index] = answer;
              }, answers),
            )}
          />
        </Box>
      ))}
      <Box mt={2} p={2} className={classes.btnWrapper}>
        {
          isLoading
            ? <CircularProgress />
            : <Button variant="contained" color="primary" fullWidth onClick={handleSubmit} className={classes.btn}>Submit</Button>
        }
      </Box>
    </Box>
  );
};

export default EndStoryReflectionForm;
