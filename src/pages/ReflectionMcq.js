import questions from '../reflections/questions.json';
import reflections from '../reflections/reflections.json';
import { useEffect } from 'react';
import { getDbReflectionResponses } from '../models/reflectionResponseModel';
import { firestore } from '../firebase';

const ReflectionMcq = () => {

    async function fetchReponses({reflectionId,questionId}) {
        const responses = await getDbReflectionResponses({reflectionId,questionId});
        const question = questions.find(({id}) => id === questionId);
        const choicesArray = question.choices.map((choice) => ({
            choiceId: choice.id,
            count: 0,
        }))
        responses.forEach((response) => {
            const answer = question.choices.find(({body}) => body === response.answer);
            if(!answer){return;}
            choicesArray.find(({choiceId}) => choiceId === answer.id).count ++;

        });
        choicesArray.forEach((choice) => {
            console.log(choice);
            updateCount({reflectionId,questionId,choice})
        })
    }

    async function updateCount({reflectionId,questionId,choice}) {
        const counterRef = firestore
        .collection('counters')
        .doc(`reflectionResponses-${reflectionId}-${questionId}-${choice.choiceId}`);
        const counter = await counterRef.get();
        if (!counter.exists) {
        await counterRef.set({ count: choice.count});
        } else {
        await counterRef.update({ count:  choice.count});
    }


    }


    useEffect(() => {
        reflections.forEach((reflection) => {
            reflection.questions?.forEach((questionId) => {
                const reflectionId = reflection.id;
                const question = questions.find(({id}) => id === questionId);
                if(question.type==="MULTI_CHOICE"){
                   fetchReponses({reflectionId,questionId});
                }
            }) 
        })
    }, [])
    

    return (
        <>
         <h1>Loaded</h1>
        </>
    )


};


export default ReflectionMcq;