import { Box, Button } from '@material-ui/core'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'
import { Steps, Step } from "react-step-builder";

import Frame from '../../components/Frame';
import OutcomeUnlockedStep from './steps/OutcomeUnlockedStep';
import QuickFeedbackStep from './steps/QuickFeedbackStep';
import BonusExperienceStep from './steps/BonusExperienceStep';
import ReminderStep from './steps/ReminderStep';
import ReflectionResponsesStep from './steps/ReflectionResponsesStep';
import LongFeedbackStep from './steps/LongFeedbackStep';
import DataBrowserStep from './steps/DataBrowserStep';
import ShareStep from './steps/ShareStep';

const StoryEnd = () => {
  const Navigation = (props) => {
    return (
      <Button type="primary" onClick={props.next} color="primary">
        Continue
      </Button> 
    );
  };

  const config = {
    navigation: {
      component: Navigation, // a React component with special props provided automatically
      location: "after" // or before
    }
  };

  return (
    <Frame>
      <Steps config={config}>
        <Step title="Outcome Unlocked" component={OutcomeUnlockedStep} />
        <Step title="Quick Feedback" component={QuickFeedbackStep} />
        <Step title="Bonus Experience" component={BonusExperienceStep} />
        <Step title="Reminder" component={ReminderStep} />
        <Step title="Reflections from Others" component={ReflectionResponsesStep} />
        <Step title="Long Feedback" component={LongFeedbackStep} />
        <Step title="Data Browser" component={DataBrowserStep} />
        <Step title="Share" component={ShareStep} />
      </Steps>
    </Frame>
  );
};

export default StoryEnd;
