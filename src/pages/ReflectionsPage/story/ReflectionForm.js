import React, { useState } from 'react';
import { Controller, useForm } from 'react-hook-form';
import { Box, Button, Grid, TextField, Typography } from '@material-ui/core'
import { useSnackbar } from '../../../contexts/SnackbarContext';
import { makeStyles } from '@material-ui/core/styles';
import QuestionCard from '../shared/QuestionCard';

import questions from "../../../reflections/questions.json";

const useStyles = makeStyles({
  form: {
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

const ReflectionForm = (props) => {
  const classes = useStyles();
  const { setSnackbar } = useSnackbar()

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

  return <form className={classes.form} onSubmit={handleSubmit(beforeSubmit)}>
    <Box className={classes.formGroup} pt={6} pb={2} backgroundColor="white">
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
    <QuestionCard question={questions[0]} value={value} onChange={event => setValue(event.target.value)} />
    <Box className={classes.formGroup} mt={2} p={2}>
      <Typography variant="body1">
        Has something like this happened to you or someone you know?
      </Typography>
      <Box mt={2}>
        <Controller
          className={classes.textField}
          variant="filled"
          as={TextField}
          control={control}
          name="name"
          placeholder="Enter your answer here"
          required
          fullWidth
          multiline
          InputProps={{ disableUnderline: true }}
        />
      </Box>
    </Box>
    <Box className={classes.formGroup} mt={2} p={2}>
      <Typography variant="body1">
        If you encountered something like this, what would you have done?
      </Typography>
      <Box mt={2}>
        <Controller
          className={classes.textField}
          variant="filled"
          as={TextField}
          control={control}
          name="name"
          placeholder="Enter your answer here"
          required
          fullWidth
          multiline
          InputProps={{ disableUnderline: true }}
        />
      </Box>
    </Box>
    <Box p={2} display="flex" justifyContent="center">
      <Button
        variant="contained"
        color="primary"
        type="submit"
        size="large"
        fullWidth
        disabled={isSubmitting}
      >
        Post
      </Button>
    </Box>
  </form>
};

export default ReflectionForm;