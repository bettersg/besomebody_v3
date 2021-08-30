import { useMemo } from 'react';
import { Button } from '@material-ui/core'
import { Steps, Step } from "react-step-builder";

import Frame from '../../components/Frame';
import useEndOfChapter from '../../hooks/useEndOfChapter'
import OutcomeUnlockedStep from './steps/OutcomeUnlockedStep';
import QuickFeedbackStep from './steps/QuickFeedbackStep';
import BonusExperienceStep from './steps/BonusExperienceStep';
import ReminderStep from './steps/ReminderStep';
import ReflectionResponsesStep from './steps/ReflectionResponsesStep';
import LongFeedbackStep from './steps/LongFeedbackStep';
import DataBrowserStep from './steps/DataBrowserStep';
import ShareStep from './steps/ShareStep';
import AudioPlayer from "../../music/Music"
import Music from '../../music/tobeyou_outrolong.mp3'

import REFLECTIONS from '../../reflections/reflections.json'

const StoryEnd = ({ reflectionId: propsReflectionId, globalVariables }) => {
  const { user } = useEndOfChapter({ globalVariables });

  const reflectionId =
    typeof propsReflectionId === 'string'
      ? parseInt(propsReflectionId, 10)
      : propsReflectionId

  const reflection = useMemo(
    () => REFLECTIONS.find((reflection) => reflection.id === reflectionId),
    [reflectionId]
  )

  const Navigation = (props) => {
    return (
      <Button type="primary" onClick={props.next} color="primary">
        Continue
      </Button> 
    );
  };

  const config = {
    navigation: {
      component: Navigation,
      location: "after"
    }
  };

  return (
    <Frame>
      <AudioPlayer Music={Music} />     
      <Steps config={config}>
        <Step title="Outcome Unlocked" component={OutcomeUnlockedStep} />
        <Step title="Quick Feedback" component={(props) => <QuickFeedbackStep reflection={reflection} {...props} />} />
        <Step title="Bonus Experience" component={BonusExperienceStep} />
        <Step title="Reminder" component={ReminderStep} />
        <Step title="Reflections from Others"  component={(props) => <ReflectionResponsesStep reflectionId={reflectionId}  {...props} />} />
        <Step title="Long Feedback" component={(props) => <LongFeedbackStep reflection={reflection} user={user} {...props} />} />
        <Step title="Data Browser" component={DataBrowserStep} />
        <Step title="Share" component={ShareStep} />
      </Steps>
    </Frame>
  );
};

export default StoryEnd;
