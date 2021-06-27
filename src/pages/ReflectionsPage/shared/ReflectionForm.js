import React, { useState, useMemo } from 'react';
import { Box, Typography, Button, CircularProgress } from '@material-ui/core'
import { useSnackbar } from '../../../contexts/SnackbarContext';
import { makeStyles } from '@material-ui/core/styles';
import Question from './Question';
import produce from "immer";
import { createDbReflectionResponses } from "../../../models/reflectionResponseModel";

import QUESTIONS from "../../../reflections/questions.json";
import { useAuth } from '../../../contexts/AuthContext';

const useStyles = makeStyles({
  container: {
    backgroundColor: '#e5e5e5',
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
});

const ReflectionForm = ({ reflection }) => {
  const classes = useStyles();
  const { currentUser } = useAuth();
  const { setSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState(false);

  const questions = useMemo(
    () => reflection
      .questions
      .map(questionId => QUESTIONS.find(question => question.id === questionId)),
    [reflection],
  );

  const [answers, setAnswers] = useState(questions.map(() => ""));

  const handleSubmitClick = async () => {
    const answerDocs = answers.map((answer, index) => {
      const question = questions[index];
      return {
        reflectionId: reflection.id,
        questionId: question.id,
        userId: currentUser.id,
        answer,
        submittedAt: new Date(),
      }
    });
    try {
      setIsLoading(true);
      await createDbReflectionResponses(answerDocs);
    } catch (err) {
      setSnackbar({
        message: "Failed to submit!",
        open: true,
        type: "error",
      })
    } finally {
      setIsLoading(false);
    }
  }

  return (
    <Box bgcolor="#e5e5e5">
      <Box pt={6} pb={2} bgcolor="white">
        <Box>
          <Typography className={classes.subtitle} variant="subtitle1" align="center">
            OVER TO YOU
          </Typography>
        </Box>
        <Box>
          <Typography className={classes.title} variant="h1" align="center">
            Tell us your story
          </Typography>
        </Box>
      </Box>
      {questions.map((question, index) => (
        <Box key={question.id} mt={2} bgcolor="white">
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
            : <Button variant="contained" color="primary" fullWidth onClick={handleSubmitClick}>Submit</Button>
        }
      </Box>
    </Box>
  );
};

export default ReflectionForm;