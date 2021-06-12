import React, {Component}from 'react';
import data from './data/quiz-data.json';
import QuestionPanel from './QuestionPanel';
import './MultipleChoiceQuiz.css';

class MultipleChoiceQuiz extends Component {
    state = { 
        questions : data.questions,
        current_question:null,
        current_question_no : 1,
        total_question_no:data.questions.length,
        progress:5,
        score:0,
        maxScore:0,
        currentAnswered:0,
        wrongAnswered:0,
     }
     
     componentDidMount(){
         this.setState({current_question:this.state.questions[0]})
     }
     nextQuestion = () =>{
        let current = this.state.current_question_no+1;
        if(current <= this.state.total_question_no){
            this.setState({current_question_no:current})
            this.setState({current_question:this.state.questions[current-1]})
           this.setState({progress:(current/this.state.total_question_no)* 100});
        }
     }
     checkUserAnswer = (userAns) =>{
        const {current_question,current_question_no ,currentAnswered,wrongAnswered , total_question_no} = this.state;
        if(current_question['correct_answer']==userAns){
            this.setState({currentAnswered:currentAnswered+1});

            const _score =(((currentAnswered +1) / (current_question_no)) * 100).toFixed(2);
            this.setState({score:_score});
        }
        else{
            this.setState({wrongAnswered:wrongAnswered+1});

            const _score =(((currentAnswered) / (current_question_no)) * 100).toFixed(2);
            this.setState({score:_score});
        }

        let _maxScore = (((current_question_no) / (total_question_no)) * 100).toFixed(2);
        this.setState({maxScore:_maxScore})
     }

    render() { 
        return (

            <>
                {this.state.current_question !==null?
                    <QuestionPanel 
                        question={this.state.current_question}
                        nextQuestion={this.nextQuestion}
                        total={this.state.total_question_no}
                        questionNo={this.state.current_question_no}
                        progress={this.state.progress}
                        checkUserAnswer={this.checkUserAnswer}
                        maxScore={this.state.maxScore}
                        score={this.state.score}
                    />
                :""
                }
                
            </>
          );
    }
}
 
export default MultipleChoiceQuiz;