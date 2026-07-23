import { useMemo } from 'react';
import { Button } from '@material-ui/core'
import { Steps, Step } from "react-step-builder";

import Frame from '../../components/Frame';
import useEndOfChapter from '../../hooks/useEndOfChapter'
// import OutcomeUnlockedStep from './steps/OutcomeUnlockedStep';
// import QuickFeedbackStep from './steps/QuickFeedbackStep';
import BonusExperienceStep from './steps/BonusExperienceStep';
import DidYouKnowStep from './steps/DidYouKnowStep';
import ReflectionIntroStep from './steps/ReflectionIntroStep';
import ReflectionResponsesStep from './steps/ReflectionResponsesStep';
// import LongFeedbackStep from './steps/LongFeedbackStep';
// import DataBrowserStep from './steps/DataBrowserStep';
import PreShareStep from './steps/PreShareStep';
import ShareStep from './steps/ShareStep';
// import StoryBrowserShare from './steps/StoryBrowserShare';
import AudioPlayer from "../../music/Music"
import Music from '../../music/tobeyou_outrolong.mp3'

import REFLECTIONS from '../../reflections/reflections.json'

const StoryEndBrowser = ({ reflectionId: propsReflectionId, globalVariables }) => {  
  console.log('You completed the game with these variables. If you want to see what other outcomes look like, consider changing some of your choices earlier. ', globalVariables)
  
  
  const { user , character_id } = useEndOfChapter({ globalVariables });

  // console.log('player  data:', user)  
  const currentCharCompleted = 'user?.character_' + character_id  + '_complete' // the user will only have this flag if they have previously submitted a reflection.
  // console.log('char completed?', eval(currentCharCompleted))

  const reflectionId =
    typeof propsReflectionId === 'string'
      ? parseInt(propsReflectionId, 10)
      : propsReflectionId

  const reflection = useMemo(
    () => REFLECTIONS.find((reflection) => reflection.id === reflectionId),
    [reflectionId]
  )


  const config = {
    // navigation: {
    //   component: Navigation,
    //   location: "after"
    // }
  };

  // Memoise step wrappers so they keep a stable identity across the Firestore
  // user-snapshot re-renders (otherwise react-step-builder remounts the active
  // step and loses in-progress state).
  const characterId = globalVariables.character_id
  const DidYouKnow = useMemo(
    () => (props) => <DidYouKnowStep reflection={reflection} {...props} />,
    [reflection]
  )
  const ReflectionResponses = useMemo(
    () => (props) => <ReflectionResponsesStep reflectionId={reflectionId} {...props} />,
    [reflectionId]
  )
  const Share = useMemo(
    () => (props) => (
      <ShareStep reflection={reflection} reflectionNum={reflectionId} characterId={characterId} user={user} {...props} />
    ),
    [reflection, reflectionId, characterId, user]
  )

  return (
    <Frame>
      <AudioPlayer Music={Music} />
      <Steps config={config}>
        {/* <Step title="Outcome Unlocked" component={OutcomeUnlockedStep} /> */}
        {/* <Step title="Quick Feedback" component={(props) => <QuickFeedbackStep reflection={reflection} {...props} />} /> */}
        <Step title="Bonus Experience" component={BonusExperienceStep} />
        <Step title="Did You Know"  component={DidYouKnow} />
        {/* <Step title="ReflectionIntroStep" component={ReflectionIntroStep} /> */}
        {/* <Step title="ReflectionIntro"  component={(props) => <ReflectionIntroStep reflectionId={reflectionId}  {...props} />}/> */}
        <Step title="Reflections from Others"  component={ReflectionResponses} />
        {/* <Step title="Long Feedback" component={(props) => <LongFeedbackStep reflection={reflection} user={user} {...props} />} /> */}
        {/* <Step title="Data Browser" component={DataBrowserStep} /> */}
        <Step title="Pre-Share Step" component={PreShareStep} />
        <Step title="Share" component={Share} />
      </Steps>
    </Frame>
  );
};

export default StoryEndBrowser;
