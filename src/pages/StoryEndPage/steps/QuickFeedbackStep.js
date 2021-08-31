import ReflectionForm from '../../../components/ReflectionForm/EndStoryReflectionForm';

const QuickFeedbackStep = ({ reflection, setState, next }) => {
  const handleSubmit = (answers) => {
    setState('quickAnswers', answers);
    next();
  };

  return (
    <ReflectionForm
      subtitle="OVER TO YOU"
      title="Chapter Feedback"
      questions={reflection.quickQuestions}
      onSubmit={handleSubmit}
    />
  );
};

export default QuickFeedbackStep;
