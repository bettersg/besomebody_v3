import React, { useState } from "react";
import clsx from "clsx";
import { makeStyles } from "@material-ui/core/styles";
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
  Typography,
} from "@material-ui/core";
import "./QuestionPanel.scss";

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty("--vh", `${vh}px`);

const useStyles = makeStyles((theme) => ({
  root: {
    textAlign: "left",
    padding: 10,
    height: "660px",
    [theme.breakpoints.only("xs")]: {
      height: "calc(var(--vh, 1vh) * 100)",
    },
    backgroundColor:"#8ADFE5",
    display: "flex", 
    flexDirection: "column", 
    justifyContent: "space-between", 

  },

  questionNumber: {
    color: "#005B69",
    fontSize: "12px",
    letterSpacing: "0.12em",
    fontWeight: 700,
    textTransform: "uppercase",
    marginBottom: "13px",
  },

  questionWrapper: {
    paddingRight: "50px",
  },

  question: {
    color: "#000A11",
    fontWeight: 600,
    fontSize: "18px",
    marginBottom: "5px",
  },

  answerHeaderCorrect: {
    color: "#4F8D00", 
    fontWeight: 700,
    fontSize: "1.15rem",
    marginBottom: "15px",
  },
  answerHeaderWrong: {
    color: "white", 
    fontWeight: 700,
    fontSize: "1.15rem",
    marginBottom: "15px",
  },

  nextButton: {
    borderRadius: 10,
    border: 0,
    color: "white",
    height: 48,
    padding: "0 30px",
  },

  nextButtonCorrect: {
    color: "#4F8D00", 
    fontWeight: 700,
    fontSize: "16px", 
    textTransform: "capitalize", 
    background: "white",
    height: "48px", 
    borderRadius: "24px", 
    width: "100%",
    boxShadow: "unset",  
    "&:hover": {
      background: "white",
    },
  },

  nextButtonWrong: {
    color: "#3835C1", 
    fontWeight: 700,
    fontSize: "16px", 
    textTransform: "capitalize", 
    background: "white",
    height: "48px", 
    borderRadius: "24px", 
    width: "100%",
    boxShadow: "unset",  
    marginTop: "20px", 
    "&:hover": {
      background: "white",
    },
  },

  textButton: {
    color: "#005B69",
    fontWeight: 700,
    fontSize: "0.7rem",
    marginBottom: "10px",
    border: "1px solid white",
    backgroundColor: "white", 
    height: "44px", 
    borderRadius: "8px", 
    boxShadow: "0px 2px 4px 0px #0B6E7D33",
    "&:hover": {
      border: "1px solid #005B69",
      backgroundColor: "#005B69",
      color: "white", 
    },
    "&:active": {
      backgroundColor: "#005B69", 
      color: "white", 
    }, 
  },

  imageButton: {
    width: "100%", 
  },

  imageCard: {
    width: "100%", 
    borderRadius: "1em",
    boxShadow: "0px 2px 4px 0px #0B6E7D33",
    border: "1px solid white",
    "&:hover": {
      border: "1px solid #3dcad3",
      backgroundColor: "#3dcad3",
    },
  },

  paper: {
    background: "green",
  },

  answerWrapper: {
    padding: "20px",
  },

  bar: {
    height: 16,
    borderRadius: 20,
  },

  media: {
    height: "80px",
  },

  mediaWrapper: {
    width: "100%", 
    backgroundColor: "white", 
  }, 

  imageTitle: {
    color: "#005B69",
    fontWeight: 500,
    fontSize: "12px",
    textAlign: "left", 
  },

  drawerStyle: {
    width: "358px",
    [theme.breakpoints.only("xs")]: {
      width: "100vw",
    },
    position: "absolute !important",
    bottom: 0,
    flexShrink: 0,
    zIndex: 1,
  },
  drawerPaperCorrect: {
    width: "358px",
    [theme.breakpoints.only("xs")]: {
      width: "100vw",
    },
    position: "absolute",
    zIndex: 1,
    bottom: 0,
    backgroundColor: "#C5E83A", //target here
    borderRadius: "15px 15px 0px 0px",
  },
  drawerPaperWrong: {
    width: "358px",
    [theme.breakpoints.only("xs")]: {
      width: "100vw",
    },
    position: "absolute",
    zIndex: 1,
    bottom: 0,
    backgroundColor: "#3835C1", //target here
    borderRadius: "15px 15px 0px 0px",
  },
  answerWrong: {
    fontSize: "14px",
    color: "white", 
  }, 
  answerCorrect: {
    fontSize: "14px",
    color: "#000A11", 
  }
}));

export default function QuestionPanel({
  question,
  nextQuestion,
  total,
  questionNo,
  checkUserAnswer,
  continueToStory,
  isDrawerOpen,
  isCorrectAnswer,
}) {
  const [answered, setAnswered] = useState("");
  const [message, setMessage] = useState("");

  const classes = useStyles();

  const getUi = ({ question, answer, answered, handleAnswer }) => {
    switch (question.type) {
      case "text": {
        return (
          <Button
            className={classes.textButton}
            fullWidth={true}
            variant={answered === answer ? "contained" : "outlined"}
            color="primary"
            key={answer.title}
            onClick={() => handleAnswer(answer.title, question.explanation)}
            disabled={answered !== "" ? true : false}
          >
            {answer.title}
          </Button>
        );
      }

      case "image": {
        return (
          <Grid key={answer.title} item xs={6}>
            <ButtonBase
              variant={answered === answer.title ? "contained" : "outlined"}
              color="primary"
              onClick={() => handleAnswer(answer.title, question.explanation)}
              disabled={answered !== "" ? true : false}
              className={clsx(classes.imageButton)}
            >
              <Card
                className={clsx(classes.imageCard)}
                p={0}
                m={0}
              >
                <CardActionArea>
                  <div className={classes.mediaWrapper}>
                    <img 
                      src={"/minigames/" + answer.imageUrl} 
                      className={classes.media}
                    />
                  </div>
                  <CardContent>
                    <Typography className={classes.imageTitle}>
                      {answer.title}
                    </Typography>
                  </CardContent>
                </CardActionArea>
              </Card>
            </ButtonBase>
          </Grid>
        );
      }

      default: {
        return <Box></Box>;
      }
    }
  };

  const handleAnswer = (answer, explanation) => {
    setAnswered(answer);
    checkUserAnswer(answer);
    setMessage('');
    if (question.correctAnswer !== answer) {
      setMessage(explanation);
    }
  };

  return (
    <>
      <Card className={classes.root}>
        <CardActionArea>
          <CardContent>
            <Typography variant="h5" className={classes.questionNumber}>
              Question {questionNo} of {total}
            </Typography>
            <Box className={classes.questionWrapper}>
              <Typography className={classes.question}>
                {question["question"]}
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
            {question["answers"].map((answer) =>
              getUi({
                question,
                answer,
                answered,
                handleAnswer,
              })
            )}
          </Grid>
        </Box>
        <Box></Box>
        <Drawer
          anchor="bottom"
          open={isDrawerOpen}
          className={classes.drawerStyle}
          // style={{}}
          classes={{
            paper: isCorrectAnswer ? classes.drawerPaperCorrect : classes.drawerPaperWrong,
          }}
        >
          <Box p={1} className={classes.answerWrapper}>
            <Box flexGrow={1}>
              {answered && (
                <>
                  {isCorrectAnswer ? 
                  <Typography variant="h5" className={classes.answerHeaderCorrect}>
                    Correct!
                  </Typography> : 
                  <Typography variant="h5" className={classes.answerHeaderWrong}>
                    Not Quite Right...
                  </Typography>
                  
                  }
                  
                  <Typography variant="body" className={`answerBody ${isCorrectAnswer ? classes.answerCorrect : classes.answerWrong}`}>
                    {message}
                  </Typography>
                </>
              )}
            </Box>
            <Box>
              {answered !== "" && (
                <Button
                  variant="contained"
                  className={clsx(
                    classes.nextButton,
                    isCorrectAnswer
                      ? classes.nextButtonCorrect
                      : classes.nextButtonWrong
                  )}
                  key="next"
                  onClick={() => {
                    nextQuestion();
                    setAnswered("");
                  }}
                >
                  Next
                </Button>
              )}
            </Box>
          </Box>
        </Drawer>
      </Card>
    </>
  );
}
