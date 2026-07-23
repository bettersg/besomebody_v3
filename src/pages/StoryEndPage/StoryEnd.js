import { useMemo } from 'react';
import { Button } from '@material-ui/core'
import { Steps, Step } from "react-step-builder";

import Frame from '../../components/Frame';
import useEndOfChapter from '../../hooks/useEndOfChapter'
import OutcomeUnlockedStep from './steps/OutcomeUnlockedStep';
import QuickFeedbackStep from './steps/QuickFeedbackStep';
import BonusExperienceStep from './steps/BonusExperienceStep';
import DidYouKnowStep from './steps/DidYouKnowStep';
import ReflectionIntroStep from './steps/ReflectionIntroStep';
import ReflectionResponsesStep from './steps/ReflectionResponsesStep';
import LongFeedbackStep from './steps/LongFeedbackStep';
// import DataBrowserStep from './steps/DataBrowserStep';
import StoryCompletedStep from './steps/StoryCompletedStep';
import PreShareStep from './steps/PreShareStep';
import ShareStep from './steps/ShareStep';
import AudioPlayer from "../../music/Music"
import Music from '../../music/tobeyou_outrolong.mp3'

import REFLECTIONS from '../../reflections/reflections.json'
import QUESTIONS from "../../reflections/questions.json";

const StoryEnd = ({ reflectionId: propsReflectionId, globalVariables }) => {  
  // console.log('story end global vars:', globalVariables)
  
  
  const { user , character_id } = useEndOfChapter({ globalVariables });

  // console.log('player  data:', user)  
  // const currentCharCompleted = 'user?.character_' + character_id  + '_complete' // the user will only have this flag if they have previously submitted a reflection.
  // console.log('char completed?', eval(currentCharCompleted))

  const reflectionId =
    typeof propsReflectionId === 'string'
      ? parseInt(propsReflectionId, 10)
      : propsReflectionId

  const reflection = useMemo(
    () => REFLECTIONS.find((reflection) => reflection.id === reflectionId),
    [reflectionId]
  );

  const questions = useMemo(
    () => {
      const quickQuestions = reflection.quickQuestions.map(questionId => QUESTIONS.find(question => question.id === questionId));
      const longQuestions = reflection.longQuestions.map(questionId => QUESTIONS.find(question => question.id === questionId));
      return [...quickQuestions, ...longQuestions];
    },
    [reflection],
  );

  const config = {
    // navigation: {
    //   component: Navigation,
    //   location: "after"
    // }
  };

  // These step wrappers must keep a stable component identity across renders.
  // Previously they were defined inline as `component={(props) => ...}`, so a
  // brand-new component type was created on every render; because StoryEnd
  // re-renders on each Firestore user snapshot, react-step-builder remounted
  // the active step and discarded any in-progress form input. Memoising them
  // keeps identity stable unless their real dependencies change.
  const characterId = globalVariables.character_id
  const QuickFeedback = useMemo(
    () => (props) => <QuickFeedbackStep reflection={reflection} {...props} />,
    [reflection]
  )
  const DidYouKnow = useMemo(
    () => (props) => <DidYouKnowStep reflection={reflection} {...props} />,
    [reflection]
  )
  const ReflectionResponses = useMemo(
    () => (props) => <ReflectionResponsesStep reflectionId={reflectionId} {...props} />,
    [reflectionId]
  )
  const LongFeedback = useMemo(
    () => (props) => (
      <LongFeedbackStep reflection={reflection} questions={questions} characterId={characterId} user={user} {...props} />
    ),
    [reflection, questions, characterId, user]
  )
  const Share = useMemo(
    () => (props) => (
      <ShareStep reflection={reflection} characterId={characterId} user={user} {...props} />
    ),
    [reflection, characterId, user]
  )

  return (
    <Frame>
      <AudioPlayer Music={Music} />
      <Steps config={config}>
        <Step title="Story Completed" component={StoryCompletedStep} />
        <Step title="Outcome Unlocked" component={OutcomeUnlockedStep} />
        <Step title="Quick Feedback" component={QuickFeedback} />
        <Step title="Did You Know"  component={DidYouKnow} />
        <Step title="Bonus Experience" component={BonusExperienceStep} />
        {/* <Step title="ReflectionIntro"  component={(props) => <ReflectionIntroStep reflectionId={reflectionId}  {...props} />}/> */}
        <Step title="Reflections from Others"  component={ReflectionResponses} />
        <Step title="Long Feedback" component={LongFeedback} />
        {/* <Step title="Data Browser" component={DataBrowserStep} /> */}
        <Step title="Pre-Share Step" component={PreShareStep} />
        <Step title="Share" component={Share} />
      </Steps>
    </Frame>
  );
};

export default StoryEnd;
