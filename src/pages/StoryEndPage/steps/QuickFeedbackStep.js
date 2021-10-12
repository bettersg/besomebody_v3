import ReflectionForm from '../../../components/ReflectionForm/EndStoryReflectionForm';

const QuickFeedbackStep = ({ reflection, setState, next }) => {
  const handleSubmit = (answers) => {
    setState('quickAnswers', answers);
    next();
  };

  return (
    <ReflectionForm
      chaptFeedback
      subtitle="OVER TO YOU"
      title="Chapter Feedback"
      questions={reflection.quickQuestions}
      context={reflection.context}
      onSubmit={handleSubmit}
    />
  );
};

export default QuickFeedbackStep;
