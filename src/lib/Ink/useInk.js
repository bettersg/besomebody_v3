import React from 'react'
import { Story } from 'inkjs'
import { initInk, STORY_VALUE_TYPE } from './initInk'

const useInk = (json) => {
  // Initialise story api
  const inkStory = React.useMemo(() => initInk(Story, json), [json])

  // Story initialising state
  const [isStoryStarted, setIsStoryStarted] = React.useState(false)

  /**
   * paragraphs is an array of object that contains
   * {
   *  text: string
   *  tags: array of strings
   * }
   */
  const [paragraphs, setParagraphs] = React.useState([])

  /**
   * choices is an array of object that contains
   * {
   *  text: string
   *  index: number
   *  tags: array of strings
   * }
   */
  const [choices, setChoices] = React.useState([])

  /**
   * variables is an object that contains:
   * - the name of the ink variable as the key
   * - and the content of the variable as the value
   *
   * for e.g:
   * {
   *  background: "school.jpg"
   *  leftCharacter: "Nadia_happy.jpg"
   *  ui: "school"
   * }
   */
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

  /**
   * To fetch next sequence in story
   * Unable to determine before hand if next sequence is paragraphs or choices
   * Hence a switch statement is used inside to either update choices or paragraphs state
   * @returns null
   */
  const handleGetStory = () => {
    if (!isStoryStarted) setIsStoryStarted(true)

    const nextStep = inkStory.nextStoryStep()
    if (!nextStep) return null

    switch (nextStep.type) {
      case STORY_VALUE_TYPE.TEXT: {
        const values = {
          text: nextStep.values,
          tags: nextStep.tags,
        }

        // Append to existing paragraphs array
        setParagraphs([...paragraphs, values])
        break
      }

      case STORY_VALUE_TYPE.CHOICE: {
        const nextChoices = nextStep.values.map((step) => {
          return {
            text: step.text,
            index: step.index,
            tags: nextStep.tags,
          }
        })

        // Replaces existing choices array
        setChoices(nextChoices)
        break
      }
      default:
        return
    }
  }

  /**
   * Submit choice to story and fetch next sequence
   * @param {* number} choiceIndex
   */
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

  /**
   * Load the paragraphs or choices in local snapshots back into the React states
   * Submit the ink saved state back to inkjs so it knows where to start fetching the next story from
   * @param {* json string} savedState
   * @returns null
   */
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
