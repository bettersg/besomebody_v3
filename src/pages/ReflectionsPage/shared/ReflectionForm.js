import React, { useState, useEffect, useMemo } from 'react';
import { useParams  , useHistory } from 'react-router-dom'

import { Box, Typography, Button, CircularProgress } from '@material-ui/core'
import { useSnackbar } from '../../../contexts/SnackbarContext';
import { makeStyles } from '@material-ui/core/styles';
import Question from './Question';
import produce from "immer";
import { createDbReflectionResponses } from "../../../models/reflectionResponseModel";

import QUESTIONS from "../../../reflections/questions.json";
import { useAuth } from '../../../contexts/AuthContext';
import { getDbUser } from '../../../models/userModel.js'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0,
    overflow:'scroll',
  },
  chaptFeedbackContainer: {
    height: "151px",
    backgroundColor: "#3835C1",  
    marginTop:"0", 
    paddingTop: "32px", 
  },
  chaptWrapperContainer: {
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    paddingTop: 0, 
        
    backgroundColor: '#8ADFE5',
    overflow: "auto", 
  },
  formGroup: {
    backgroundColor: 'white',
  },
  subtitle: {
    fontSize: '13px',
    color: 'white',
    fontWeight: 700, 
    fontSize: "13px", 
    marginTop: "17px",
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
  skipButton: {
    color: "#C4C6F1", 
    marginLeft: "20px", 
    fontWeight: 700, 
    fontSize: "13px", 
    letterSpacing: "0.12em",
  }, 
  chaptBtn: {
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
  btnWrapper: {
    display: "flex", 
    justifyContent: "center", 
    alignItems: "center", 
  }
}))

const ReflectionForm = ({ reflection }) => {
  const classes = useStyles();
  const { currentUser } = useAuth();
  const { setSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState(false);
  const history = useHistory()
  const { name } = useParams()
  const [userFromDb, setUserFromDb] = useState(null)

    useEffect(() => {
        const getUser = async () => {
        const user = await getDbUser(currentUser.id)
        return setUserFromDb(user)
        }

        getUser()
    }, [currentUser.id])

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
      const choiceId = question.choices?.find(({ body }) => body === answer)?.id ?? null;
      return {
        reflectionId: reflection.id,
        questionId: question.id,
        choiceId,
        userId: currentUser.id,
        answer,
        submittedAt: new Date(),
        timestamp: Date.now(),
        ...userFromDb?.activeRoom  ? { room: userFromDb?.activeRoom } : {},
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
      history.push("/chapterend/" + name + '/' + reflection.chapter)
    }
  }
  // console.log(userFromDb?.activeRoom)

  return (
    <Box pt={6} pb={2} className={classes.chaptWrapperContainer}>
      <Box className= {classes.chaptFeedbackContainer}>
        <Box>
            <Typography className={classes.skipButton}> 
            {/* TODO: need onclick function to skip the page */}
              SKIP
            </Typography>
        </Box>
        <Box>
          <Typography className={classes.subtitle} variant="subtitle1" align="center">
            OVER TO YOU
          </Typography>
        </Box>
        <Box>
          <Typography className={classes.title} variant="h1" align="center">
            Chapter Feedback
          </Typography>
        </Box>
      </Box>
      {questions.map((question, index) => (
        <Box key={question.id} mt={2}  className={classes.container}>
          <Question
            key={question.id}
            question={question}
            context={reflection.context}
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
            : <Button variant="contained" color="primary" fullWidth onClick={handleSubmitClick} className = {classes.chaptBtn}>Submit</Button>
        }
      </Box>
    </Box>
  );
};

export default ReflectionForm;
