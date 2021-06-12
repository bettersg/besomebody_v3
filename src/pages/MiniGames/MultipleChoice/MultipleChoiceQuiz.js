import { useState, useEffect } from 'react';
import data from './data/quiz-data.json';
import QuestionPanel from './QuestionPanel';
import './MultipleChoiceQuiz.css';

export default function MultipleChoiceQuiz(props) {

    const { getStory } = props


    const [currentQuestion,setCurrentQuestion] = useState(data.questions[0])
    const [currentQuestionNumber,setCurrentQuestionNumber] = useState(1)
    const [score,setScore] = useState(0)
    const [correctAnswered,setCorrectAnswered] = useState(0)
    const [userAnswers,setUserAnswers] = useState([])

    useEffect(() => {

    },[])

    const saveUserAnswer = (userAns) => {
        setUserAnswers([...userAnswers, {
            id: currentQuestion.answers.map(x => x.title).indexOf(userAns),
            title: userAns
        }])
    }

    const continueToStory = () => {

        //TODO: Save user answers to firebase

        getStory();
    }

    const nextQuestion = () =>{
        let current = currentQuestionNumber+1;
        if(current <= data.questions.length){
            setCurrentQuestionNumber(current)
            setCurrentQuestion(data.questions[current-1])
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
                total={data.questions.length}
                questionNo={currentQuestionNumber}
                checkUserAnswer={checkUserAnswer}
                score={score}
                continueToStory={continueToStory}
                userAnswers={userAnswers}
            />  
        </>

    )

    
    




}