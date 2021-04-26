import React from 'react'
import { Story } from 'inkjs'
import { initInk } from './initInk'

const useInk = (json) => {
  // eslint-disable-next-line react-hooks/exhaustive-deps
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
      const fetchedVariables = inkStory.allVariables()
      setVariables(fetchedVariables)
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [isStoryStarted, paragraphs])

  // To fetch next sequence in story
  const handleGetStory = () => {
    const nextStep = inkStory.nextStoryStep()

    console.log('nextStep: ', nextStep)

    // Update paragraphs states
    if (nextStep?.type === 'text') {
      const values = {
        text: nextStep.values,
        tags: nextStep.tags,
      }
      setParagraphs([...paragraphs, values])
    }

    // Update choices states
    if (nextStep?.type === 'choice') {
      const nextChoices = nextStep.values.map((step) => {
        return {
          text: step.text,
          index: step.index,
          tags: nextStep.tags,
        }
      })

      setChoices(nextChoices)
    }
  }

  // Submit choice to story and fetch next sequence
  const handleSelectChoice = (choiceIndex) => {
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
    if (savedState && paragraphsSnapShot.length) {
      setParagraphs(paragraphsSnapShot)
      setChoices(choicesSnapShot)
      inkStory.loadStoryState(savedState)
      setIsStoryStarted(true)
      handleGetStory()
    }
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
    setChoice: handleSelectChoice,
    resetStory: handleResetStory,
    startStoryFrom: handleStartStoryFrom,
    saveStory: handleSaveStory,
    loadSavedStory: handleLoadSavedStory,
    resetSavedStory: handleResetSavedStory,
  }
}

export default useInk
