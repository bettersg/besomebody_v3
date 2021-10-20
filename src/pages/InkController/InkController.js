import React, { useEffect, useState } from 'react'
import { useParams , useHistory } from 'react-router-dom'
import { Box, Container } from '@material-ui/core'
import WhatsApp from '../WhatsappPage/Whatsapp'
import Scene from '../ScenePage/Scene'
import InkControls from './InkControls'
import DefaultInk from '../DefaultInk'
import Survey from '../SurveyPage/Survey'
import MultipleChoiceQuiz from '../MiniGames/MultipleChoice/MultipleChoiceQuiz'
import SwipeQuiz from '../MiniGames/Swipe/SwipeQuiz'
import { useInkContext } from '../../contexts/InkContext'
import Narrator from '../NarratorPage/Narrator'
import Notification from '../NotificationPage/Notification'
import Reflection from '../ReflectionsPage/Reflection'
import StoryEnd from '../StoryEndPage/StoryEnd'
import StoryEndBrowser from '../StoryEndPage/StoryEndBrowser'

const getUi = ({
  currentParagraphs,
  specialTags,
  globalVariables,
  whatsAppParagraphs,
}) => {
  switch (specialTags.ui) {
    case 'scene': {
      return <Scene currentParagraphs={currentParagraphs} />
    }
    case 'whatsapp': {
      return <WhatsApp currentParagraphs={whatsAppParagraphs} />
    }
    case 'narrator': {
      return <Narrator currentParagraphs={currentParagraphs} />
    }
    case 'notification': {
      return <Notification currentParagraphs={currentParagraphs} />
    }  
    // case 'survey': {
    //   // TODO: update this component
    //   return <Survey currentParagraphs={currentParagraphs} />
    // }

    case 'chapter_reflection': {
       
      return (
        <Reflection
          reflectionId={specialTags.reflection_id}
          globalVariables={globalVariables}
        />
      )
    }
      
    case 'story_end': {
       
      return (
        <StoryEnd
          reflectionId={specialTags.reflection_id}
          globalVariables={globalVariables}
        />
      )
    }
      
    case 'story_end_browser': {
       
      return (
        <StoryEndBrowser
          reflectionId={specialTags.reflection_id}
          globalVariables={globalVariables}
        />
      )
    }
      
    
      

    case 'mcq': {
      return <MultipleChoiceQuiz quizId={specialTags.game_id} />
    }

    // case 'swipe': {
    //   return <SwipeQuiz quizId={specialTags.game_id} />
    // }

    // case reflection  - return a reflection component with argument for survey id from ink
    // <Reflection getstory surveyid />

    // case 'school': {
    //   return (
    //     // to remove school from nadia's story
    //     <Scene currentParagraphs={currentParagraphs} />
    //   )
    // }
    default:
      return <DefaultInk currentParagraphs={currentParagraphs} />
  }
}

const InkController = () => {
  const {
    // States
    paragraphs,
    specialTags,
    currentKnot,
    globalVariables,
    isStoryStarted,

    // Methods
    saveStory,
  } = useInkContext()

  const history = useHistory()
  const { name } = useParams()
  // console.log('inkController globalVar: ' , globalVariables)
  // console.log('inkController specialTags: ' , specialTags)
  // console.log('inkController paragraphs: ' , paragraphs)
  // console.log('inkController knot: ' + currentKnot)
  // ==============================================================
  // Filter paragraphs based on current knot
  // ==============================================================
  const [currentParagraphs, setCurrentParagraphs] = useState([])
  const [whatsAppParagraphs, setWhatsAppParagraphs] = useState([])

  useEffect(() => {
    if (currentKnot || paragraphs[paragraphs.length - 1]?.currentKnot) {
      const nextParagraphs = paragraphs.filter((paragraph) => {
        return paragraph.currentKnot === currentKnot
      })
      if (specialTags.ui === 'whatsapp') {
        setWhatsAppParagraphs([...nextParagraphs])
        return setCurrentParagraphs([...whatsAppParagraphs, ...nextParagraphs])
      }
      return setCurrentParagraphs([...nextParagraphs])
    }
    setCurrentParagraphs(paragraphs)

    // Run this useEffect whenever paragraphs, currentKnot, or specialTags get updated
  }, [paragraphs, currentKnot, specialTags])

  // ==============================================================
  // Save data when a knot change is detected
  // ==============================================================
  const [knot, setKnot] = useState(null)

  useEffect(() => {
    if (currentKnot) setKnot(currentKnot)
    if (currentParagraphs?.length > 1 && knot !== currentKnot) {
      saveStory()
    }

    // Run this useEffect whenever currentKnot gets updated
  }, [currentKnot])

  return (
    <Container maxWidth="lg" className="ink-controller">
      {isStoryStarted ? null :       
        history.push('/chapters/'+ name )
        // <Container style={{ display: 'flex', justifyContent: 'center', alignItems: 'center' }}><Box my={10}>Please start story from your last saved state <Button variant="contained" color="primary" fullWidth onClick={() => loadSavedStory()}>LOAD AUTOSAVE</Button></Box>
        // </Container>
      }

      {getUi({
        currentParagraphs,
        specialTags,
        globalVariables,
        whatsAppParagraphs,
      })}

      {/* Render event triggers */}
      <InkControls />
    </Container>
  )
}

export default InkController
