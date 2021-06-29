import { useState, useEffect } from 'react';
import QuestionPanel from './QuestionPanel';
import './MultipleChoiceQuiz.css';
import { useAuth } from '../../../contexts/AuthContext';
import { createDbAnswers } from "../../../models/quizAnswerModel";
import { useInkContext } from '../../../contexts/InkContext'
import { MINI_GAME_MAP } from '../../../models/miniGameMap';

export default function MultipleChoiceQuiz(props) {

    const { getStory, specialTags } = useInkContext();
    const quiz = MINI_GAME_MAP.filter(x => x.game_id===parseInt(specialTags.game_id))[0];
    const { currentUser } = useAuth();
    const [currentQuestion,setCurrentQuestion] = useState(quiz.questions[0])
    const [currentQuestionNumber,setCurrentQuestionNumber] = useState(1)
    const [score,setScore] = useState(0)
    const [correctAnswered,setCorrectAnswered] = useState(0)
    const [userAnswers,setUserAnswers] = useState([])

    useEffect(() => {

    },[])

    const saveUserAnswer = (userAns) => {
        console.log(userAns);
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
        console.log(answerDocs);
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
        }
    }

    const checkUserAnswer = (userAns) =>{
        console.log(userAns)
        console.log(currentQuestion.correctAnswer)
        saveUserAnswer(userAns)
        if(currentQuestion.correctAnswer==userAns){
            setCorrectAnswered(correctAnswered+1)
            setScore(((correctAnswered +1) / (currentQuestionNumber)) * 100)
        }
        else{
            setScore(((correctAnswered) / (currentQuestionNumber)) * 100)
        }
     }

    return (
        <>
            <QuestionPanel 
                question={currentQuestion}
                nextQuestion={nextQuestion}
                total={quiz.questions.length}
                questionNo={currentQuestionNumber}
                checkUserAnswer={checkUserAnswer}
                score={score}
                continueToStory={continueToStory}
                userAnswers={userAnswers}
            />  
        </>

    )

    
    




}