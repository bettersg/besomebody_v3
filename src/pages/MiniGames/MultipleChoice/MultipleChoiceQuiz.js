import { useState, useEffect } from 'react';
import QuestionPanel from './QuestionPanel';
import { useAuth } from '../../../contexts/AuthContext';
import { createDbAnswers } from "../../../models/quizAnswerModel";
import makeStyles from '@material-ui/core/styles/makeStyles';
import { useInkContext } from '../../../contexts/InkContext';
import {
    Fade,
    Button,
    Box,   
} from '@material-ui/core';
import { MINI_GAME_MAP } from '../../../models/miniGameMap';

import './MultipleChoiceQuiz.scss';

const useStyles = makeStyles((theme) => ({
    paragraphWrapper: {
      backgroundSize: 'cover',
      backgroundPosition: 'center',
      height: '100vh',
      [theme.breakpoints.up('md')]: {
        height: '660px',
      },
      bottom: 0, 
    },
  }))


export default function MultipleChoiceQuiz(props) {

    const { getStory, specialTags } = useInkContext();
    const quiz = MINI_GAME_MAP.filter(x => x.game_id===parseInt(specialTags.game_id))[0];
    const { currentUser } = useAuth();
    const [hasGameStarted,setHasGameStarted] = useState(false);
    const [hasGameEnded,setHasGameEnded] = useState(false);
    const [currentQuestion,setCurrentQuestion] = useState(quiz.questions[0])
    const [currentQuestionNumber,setCurrentQuestionNumber] = useState(1)
    const [score,setScore] = useState(0)
    const [correctAnswered,setCorrectAnswered] = useState(0)
    const [userAnswers,setUserAnswers] = useState([])
    const [isCorrectAnswer,setIsCorrectAnswer] = useState(false);
    const [isDrawerOpen,setIsDrawerOpen]=useState(false);
    const classes = useStyles();  

    useEffect(() => {

    },[])

    const saveUserAnswer = (userAns) => {
        // console.log(userAns);
        setUserAnswers([...userAnswers, {
            answerId: currentQuestion.answers.filter(x => x.title)[0].answer_id,
            questionId: currentQuestion.question_id,
        }])
    }

    const continueToStory = async () => {
        const answerDocs = {
            userId: currentUser.id,
            gameId: quiz.game_id,
            answers: userAnswers,
            createdAt: new Date(),
        }
        // console.log(answerDocs);
        try {
            await createDbAnswers(answerDocs);
        } catch (err) {
            throw new Error(`${err}`)
        } finally {
            getStory();
        }
    }

    const nextQuestion = () =>{
        let current = currentQuestionNumber+1;
        if(current <= quiz.questions.length){
            setCurrentQuestionNumber(current)
            setCurrentQuestion(quiz.questions[current-1])
        }else {
            setHasGameEnded(true);
        }
        setIsDrawerOpen(false);
    }

    const checkUserAnswer = (userAns) =>{
        saveUserAnswer(userAns)
        if(currentQuestion.correctAnswer==userAns){
            setIsCorrectAnswer(true);
            setCorrectAnswered(correctAnswered+1)
            setScore(((correctAnswered +1) / (currentQuestionNumber)) * 100)
        }
        else{
            setIsCorrectAnswer(false);
            setScore(((correctAnswered) / (currentQuestionNumber)) * 100)
        }
        setIsDrawerOpen(true);
     }

    const handleStartGame = () => {
        console.log("hello");
        setHasGameStarted(true);
     }

    return (
        <>
            {quiz.introduction && !hasGameStarted && 
            <Fade in={true} timeout={700}>
                <Box className={classes.paragraphWrapper}  height="100%">
                <div className="MultipleChoice__text">
                    <Box>
                        { quiz.introduction}
                    </Box>
                    <Button
                    color="primary"
                    variant="contained"
                    onClick={() => handleStartGame()}
                    >Start Game</Button>
                </div>
                </Box>
            </Fade>
            }

            {hasGameStarted && hasGameEnded &&

                <Fade in={true} timeout={700}>
                <Box className={classes.paragraphWrapper}  height="100%">
                <div className="MultipleChoice__text">
                    <Box> 
                        You've scored {correctAnswered} out of {quiz.questions.length}
                    </Box>
                    <Button 
                    variant="contained" 
                    color="primary"
                    className={`nextButton`}
                    key="next" onClick={()=>{continueToStory();}} 
                    >
                    Back to Story
                    </Button>
                </div>
                </Box>
                </Fade>
                
            } 

            {hasGameStarted && !hasGameEnded &&
            <Fade in={true} timeout={700}>
            <QuestionPanel 
                question={currentQuestion}
                nextQuestion={nextQuestion}
                total={quiz.questions.length}
                questionNo={currentQuestionNumber}
                checkUserAnswer={checkUserAnswer}
                score={score}
                continueToStory={continueToStory}
                userAnswers={userAnswers}
                isCorrectAnswer={isCorrectAnswer}
                isDrawerOpen={isDrawerOpen}
            /> 
            </Fade>
            }

            
            

        </>

    )

    
    




}