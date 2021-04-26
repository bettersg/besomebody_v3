import React from 'react'
import { Story } from 'inkjs'
import { EVENT_TYPE_ENUM, inkJs } from './index'
import json from './nadid.ink.json'

const inkStory = inkJs(Story, json, EVENT_TYPE_ENUM)

const UseInkJs = () => {
  // Story initialising state
  const [isStoryStarted, setIsStoryStarted] = React.useState(false)

  // Paragraphs, Choices, and Variables states
  const [paragraphs, setParagraphs] = React.useState([])
  const [choices, setChoices] = React.useState([])
  const [variables, setVariables] = React.useState({})

  // Save story progression states
  const [saved, setSaved] = React.useState(null)
  const [paragraphsSnapShot, setParagraphsSnapShot] = React.useState([])
  const [choicesSnapShot, setChoicesSnapShot] = React.useState([])

  // Auto fetch all variables when story is started and paragraphs are fetched
  React.useEffect(() => {
    if (isStoryStarted) {
      const fetchedVariables = inkStory.allVariables()
      setVariables(fetchedVariables)
    }
  }, [isStoryStarted, paragraphs])

  // To fetch next sequence in story
  const handleGetStory = () => {
    const nextStep = inkStory.nextStoryStep()

    // Update paragraphs states
    if (nextStep?.type === EVENT_TYPE_ENUM.TEXT) {
      const values = {
        text: nextStep.values,
        tags: nextStep.tags,
      }
      setParagraphs([...paragraphs, values])
    }

    // Update choices states
    if (nextStep?.type === EVENT_TYPE_ENUM.CHOICE) {
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
    inkStory.resetStory()
  }

  // Set starting point in inkStory and fetch next sequence
  const handleStartStoryFrom = (pathName) => {
    inkStory.startStoryFrom(pathName)
    setIsStoryStarted(true)
  }

  // Save snapshots of both React and inkStory states
  const handleSaveStory = () => {
    setParagraphsSnapShot(paragraphs)
    setChoicesSnapShot(choices)
    const savedState = inkStory.saveStoryState()
    setSaved(savedState)
  }

  // Load the snapshots back into both React and inkStory states
  const handleLoadStoryFromState = (savedState) => {
    if (savedState && paragraphsSnapShot.length) {
      setParagraphs(paragraphsSnapShot)
      setChoices(choicesSnapShot)
      inkStory.loadStoryState(savedState)
      setIsStoryStarted(true)
    }
  }

  // Clear snapshots in React states
  const handleClearLoadStates = () => {
    setParagraphsSnapShot([])
    setChoicesSnapShot([])
    setSaved(null)
  }

  return {
    // State hooks
    isStoryStarted,
    setIsStoryStarted,
    paragraphs,
    choices,
    variables,
    saved,

    // Controller Hooks
    handleGetStory,
    handleSelectChoice,
    handleResetStory,
    handleStartStoryFrom,
    handleSaveStory,
    handleLoadStoryFromState,
    handleClearLoadStates,
  }
}

export default UseInkJs
