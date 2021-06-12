import React, { useState, useMemo } from 'react';
import { Controller, useForm } from 'react-hook-form';
import { Box, Button, Grid, TextField, Typography, Card } from '@material-ui/core'
import { useSnackbar } from '../../../contexts/SnackbarContext';
import { makeStyles } from '@material-ui/core/styles';
import Question from '../shared/Question';

import QUESTIONS from "../../../reflections/questions.json";

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
  const { setSnackbar } = useSnackbar()

  const questions = useMemo(
    () => reflection
      .questions
      .map(questionId => QUESTIONS.find(question => question.id === questionId)),
    [reflection],
  );

  const [value, setValue] = useState("");

  const defaultValues = {
    name: '',
    email: '',
  }

  const {
    formState: { isSubmitting },
    handleSubmit,
    control,
    reset,
  } = useForm({
    defaultValues,
  });

  const beforeSubmit = async (values) => {
    console.log(values);
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
      {questions.map(question => (
        <Box key={question.id} mt={2} bgcolor="white">
          <Question
            question={question}
            value={value}
            onChange={event => setValue(event.target.value)}
          />
        </Box>
      ))}
    </Box>
  );
};

export default ReflectionForm;