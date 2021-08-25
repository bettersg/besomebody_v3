import ReflectionForm from '../../../components/ReflectionForm';
import reflections from '../../../reflections/reflections.json';

const LongFeedbackStep = () => {
  return <ReflectionForm reflection={reflections[1]} />;
};

export default LongFeedbackStep;
