import ReflectionForm from '../../../components/ReflectionForm/EndStoryReflectionForm';
import { useSnackbar } from '../../../contexts/SnackbarContext';
import { useAuth } from '../../../contexts/AuthContext';
import { createDbReflectionResponses } from "../../../models/reflectionResponseModel";
import { getDbUser, updateDbUser } from '../../../models/userModel'

const LongFeedbackStep = ({ reflection, questions, characterId, setState, getState, next }) => {
  const { currentUser } = useAuth();
  const { setSnackbar } = useSnackbar();

  const handleSubmit = async (longAnswers) => {
    setState('longAnswers', longAnswers);

    const quickAnswers = getState('quickAnswers');

    const questionIds = [...reflection.quickQuestions, ...reflection.longQuestions];
    const answers = [...quickAnswers, ...longAnswers];

    const answerDocs = answers.map((answer, index) => {
      const questionId = questionIds[index];
      const question = questions.find(question => question.id === questionId);
      const choiceId = question.choices?.find(({ body }) => body === answer)?.id ?? null;
      return {
        reflectionId: reflection.id,
        questionId,
        choiceId,
        userId: currentUser.id,
        answer,
        submittedAt: new Date(),
        timestamp: Date.now(),
      };
    });

    setState('answerDocs', answerDocs);

    await createDbReflectionResponses(answerDocs);

    // Update the user achievements.

    const currentUserDb = await getDbUser(currentUser.id);

    await updateDbUser({
      [`character_${characterId}_completed`]: true,
    }, currentUserDb.id)          
  };

  const handleSuccess = () => {
    next();
  };

  const handleError = () => {
    setSnackbar({
      message: "Failed to submit!",
      open: true,
      type: "error",
    })
  };

  return <ReflectionForm 
  subtitle="OVER TO YOU"
  title="Share your story" 
  context={reflection.context} questions={reflection.longQuestions} onSubmit={handleSubmit} onSuccess={handleSuccess} onError={handleError} />;
};

export default LongFeedbackStep;
