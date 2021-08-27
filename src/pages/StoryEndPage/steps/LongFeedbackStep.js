import ReflectionForm from '../../../components/ReflectionForm/EndStoryReflectionForm';

const LongFeedbackStep = ({ reflection, getState, next }) => {
  const handleSubmit = (longAnswers) => {
    const quickAnswers = getState('quickAnswers');
    console.log({ quickAnswers, longAnswers });
  };

  return <ReflectionForm questions={reflection.longQuestions} onSubmit={handleSubmit} />;
};

export default LongFeedbackStep;
