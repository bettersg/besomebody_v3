/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect } from 'react'
import { Story } from 'inkjs'
import { initInk, STORY_VALUE_TYPE } from './initInk'
import { useAuth } from '../../contexts/AuthContext'
import {
  createDbSavedStates,
  deleteDbSavedStates,
  getDbSavedStates,
} from '../../models/saveStateModel'

const useInk = (json, inkName) => {
  // Get current user info
  const { currentUser } = useAuth()

  // Format a fixed saved data ID for firestore DB
  const saveDataId = `${currentUser.uid}-${inkName}`

  // Initialise inkjs
  const inkStory = React.useMemo(() => initInk(Story, json), [json])

  // Story initialising state is a boolean
  const [isStoryStarted, setIsStoryStarted] = React.useState(false)

  // Paragraphs is an array of object that contains
  // { text: string, tags: string[] }
  const [paragraphs, setParagraphs] = React.useState([])

  // Choices is an array of object that contains
  // { text: string, index: number, tags: string[] }
  const [choices, setChoices] = React.useState([])

  // SpecialTags is an dynamic object with only strings as it values
  const [specialTags, setSpecialTags] = React.useState({})

  // GlobalVariables is an dynamic object
  const [globalVariables, setGlobalVariables] = React.useState({})

  // Save story progression states
  const [hasSavedState, setHasSavedState] = React.useState(false)

  useEffect(() => {
    const getSaveStates = async () => {
      const savedStateRes = await getDbSavedStates(saveDataId)
      if (savedStateRes) {
        setHasSavedState(true)
      }
    }

    getSaveStates()
  }, [])

  /**
   * To update special tags with:
   * - The content before the first colon in the tag as the key
   * - The content after the first colon in the tag as as the value
   * @param {* string[]} tags
   */
  const handleUpdateSpecialTags = (tags) => {
    const nextSpecialTags = { ...specialTags }
    tags.map((tag) => {
      const key = tag.substr(0, tag.indexOf(':'))
      const value = tag.substr(tag.indexOf(':') + 1)
      nextSpecialTags[key] = value
      return null
    })

    setSpecialTags(nextSpecialTags)
  }

  /**
   * To fetch next sequence in story
   * - Set storyStarted to true if it is false
   * - Update globalVariables if there are global variables
   * - Update specialTags if there are special tags
   * - Update either choices or paragraphs state
   */
  const handleGetStory = async () => {
    // Set storyStarted to true if it is false
    if (!isStoryStarted) setIsStoryStarted(true)

    const nextStep = inkStory.nextStoryStep()
    if (!nextStep) return null

    // Update globalVariables if there are global variables
    const currentGlobalVariables = inkStory.getGlobalVariables()
    if (currentGlobalVariables) setGlobalVariables(currentGlobalVariables)

    // Update specialTags if there are special tags
    const currentSpecialTags = nextStep.tags.filter((tag) => tag.includes(':'))
    if (currentSpecialTags.length) handleUpdateSpecialTags(currentSpecialTags)
    const nonSpecialTags = nextStep.tags.filter((tag) => !tag.includes(':'))

    switch (nextStep.type) {
      // Append to existing paragraphs array
      case STORY_VALUE_TYPE.TEXT: {
        const values = {
          text: nextStep.values,
          tags: nonSpecialTags,
        }
        return setParagraphs([...paragraphs, values])
      }

      // Replaces existing choices array
      case STORY_VALUE_TYPE.CHOICE: {
        const nextChoices = nextStep.values.map((step) => {
          return {
            text: step.text,
            index: step.index,
            tags: nonSpecialTags,
          }
        })
        return setChoices(nextChoices)
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
    setSpecialTags({})
    setGlobalVariables({})
    inkStory.resetStory()
  }

  /**
   * Set starting point in inkjs and fetch next sequence
   * @param {* string} pathName
   */
  const handleStartStoryFrom = (pathName) => {
    try {
      inkStory.startStoryFrom(pathName)
      setIsStoryStarted(true)
      handleGetStory()
    } catch (err) {
      console.error(err)
    }
  }

  // Save snapshots of both React and inkStory states
  const handleSaveStory = async () => {
    const savedState = inkStory.saveStoryState()
    const saveData = {
      inkJson: savedState,
      specialTags,
      globalVariables,
      paragraphs,
      choices,
      userId: currentUser.uid,
      inkName,
    }

    await createDbSavedStates(saveData, saveDataId)
    setHasSavedState(true)
  }

  /**
   * Load the paragraphs or choices in local snapshots back into the React states
   * Submit the ink saved state back to inkjs so it knows where to start fetching the next story from
   */
  const handleLoadSavedStory = async () => {
    const savedStateRes = await getDbSavedStates(saveDataId)
    if (!savedStateRes) return null

    setParagraphs(savedStateRes.paragraphs)
    setChoices(savedStateRes.choices)
    setSpecialTags(savedStateRes.specialTags)
    setGlobalVariables(savedStateRes.globalVariables)
    setIsStoryStarted(true)
    inkStory.loadStoryState(savedStateRes.inkJson)
  }

  // Clear snapshots in React states
  const handleResetSavedStory = async () => {
    await deleteDbSavedStates(saveDataId)
    setHasSavedState(false)
  }

  return {
    // States
    isStoryStarted,
    paragraphs,
    choices,
    specialTags,
    globalVariables,
    hasSavedState,

    // Methods
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
