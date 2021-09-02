import produce from 'immer';
import { useState } from 'react';
import { Box, Typography, Button, CircularProgress } from '@material-ui/core'
import { makeStyles } from '@material-ui/core/styles';

import QUESTIONS from '../../reflections/questions.json';

import Question from './Question';

const useStyles = makeStyles(() => ({
  container: {
    backgroundColor: 'rgba(255,255,255,0.7)',
  },
  formGroup: {
    backgroundColor: 'white',
  },
  subtitle: {
    fontSize: '16px',
    color: 'rgba(0, 0, 0, 0.5)',
  },
  title: {
    fontSize: '24px',
    fontWeight: 'bold',
  },
  textField: {
    // backgroundColor: '#e5e5e5',
  },
}))

const EndStoryReflectionForm = ({ subtitle, title, questions: propsQuestions, onSubmit, onSuccess, onError }) => {
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
    <Box pt={6} pb={2} className={classes.container}>
      <Box>
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
            value={answers[index]}
            onChange={answer => setAnswers(
              produce(draftAnswers => {
                draftAnswers[index] = answer;
              }, answers),
            )}
          />
        </Box>
      ))}
      <Box mt={2} p={2}>
        {
          isLoading
            ? <CircularProgress />
            : <Button variant="contained" color="primary" fullWidth onClick={handleSubmit}>Submit</Button>
        }
      </Box>
    </Box>
  );
};

export default EndStoryReflectionForm;
