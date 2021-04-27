import React from 'react'
import { Story } from 'inkjs'
import { initInk, STORY_VALUE_TYPE } from './initInk'

const useInk = (json) => {
  // Initialise story api
  const inkStory = React.useMemo(() => initInk(Story, json), [json])

  // Story initialising state
  const [isStoryStarted, setIsStoryStarted] = React.useState(false)

  // Paragraphs, Choices, and Variables states
  const [paragraphs, setParagraphs] = React.useState([])
  const [choices, setChoices] = React.useState([])
  const [variables, setVariables] = React.useState({})

  // Save story progression states
  const [savedTexts, setSavedTexts] = React.useState(null)
  const [paragraphsSnapShot, setParagraphsSnapShot] = React.useState([])
  const [choicesSnapShot, setChoicesSnapShot] = React.useState([])

  // Auto fetch all variables when story is started and paragraphs are fetched
  React.useEffect(() => {
    if (isStoryStarted) {
      const fetchedVariables = inkStory.getVariables()
      setVariables(fetchedVariables)
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [isStoryStarted, paragraphs])

  // To fetch next sequence in story
  const handleGetStory = () => {
    const nextStep = inkStory.nextStoryStep()

    if (!nextStep) return null

    switch (nextStep.type) {
      // Update paragraphs states
      case STORY_VALUE_TYPE.TEXT: {
        const values = {
          text: nextStep.values,
          tags: nextStep.tags,
        }
        setParagraphs([...paragraphs, values])
        break
      }

      // Update choices states
      case STORY_VALUE_TYPE.CHOICE: {
        const nextChoices = nextStep.values.map((step) => {
          return {
            text: step.text,
            index: step.index,
            tags: nextStep.tags,
          }
        })
        setChoices(nextChoices)
        break
      }
      default:
        return
    }
  }

  // Submit choice to story and fetch next sequence
  const handleSetChoice = (choiceIndex) => {
    setChoices([])
    inkStory.selectChoice(choiceIndex)
    handleGetStory()
  }

  // Reset both React and inkStory states
  const handleResetStory = () => {
    setIsStoryStarted(false)
    setParagraphs([])
    setChoices([])
    setVariables({})
    inkStory.resetStory()
  }

  // Set starting point in inkStory and fetch next sequence
  const handleStartStoryFrom = (pathName) => {
    inkStory.startStoryFrom(pathName)
    setIsStoryStarted(true)
    handleGetStory()
  }

  // Save snapshots of both React and inkStory states
  const handleSaveStory = () => {
    setParagraphsSnapShot(paragraphs)
    setChoicesSnapShot(choices)
    const savedState = inkStory.saveStoryState()
    setSavedTexts(savedState)
  }

  // Load the snapshots back into both React and inkStory states
  const handleLoadSavedStory = (savedState) => {
    if (!(savedState && paragraphsSnapShot.length)) return null

    setParagraphs(paragraphsSnapShot)
    setChoices(choicesSnapShot)
    inkStory.loadStoryState(savedState)
    setIsStoryStarted(true)
  }

  // Clear snapshots in React states
  const handleResetSavedStory = () => {
    setParagraphsSnapShot([])
    setChoicesSnapShot([])
    setSavedTexts(null)
  }

  return {
    // State hooks
    isStoryStarted,
    paragraphs,
    choices,
    variables,
    savedTexts,

    // Controller Hooks
    setParagraphs,
    setIsStoryStarted,
    getStory: handleGetStory,
    setChoice: handleSetChoice,
    resetStory: handleResetStory,
    startStoryFrom: handleStartStoryFrom,
    saveStory: handleSaveStory,
    loadSavedStory: handleLoadSavedStory,
    resetSavedStory: handleResetSavedStory,
  }
}

export default useInk
