/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect } from 'react'
import { Story } from 'inkjs'
import { initInk } from './initInk'
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
  // { text: string, tags: string[], currentKnot: string }
  const [paragraphs, setParagraphs] = React.useState([])

  // Choices is an array of object that contains
  // { text: string, index: number, tags: string[], currentKnot: string }
  const [choices, setChoices] = React.useState([])

  // SpecialTags is an dynamic object with only strings as it values
  const [specialTags, setSpecialTags] = React.useState({})

  // GlobalVariables is an dynamic object
  const [globalVariables, setGlobalVariables] = React.useState({})

  // CurrentKnot is an string denoting the current knot the user is in
  const [currentKnot, setCurrentKnot] = React.useState(null)

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
   * - Update currentKnot if chapter is retrieved
   * - Update either choices or paragraphs state
   */
  const handleGetStory = async () => {
    // Set storyStarted to true if it is false
    if (!isStoryStarted) setIsStoryStarted(true)

    // Get next story step
    const nextStep = inkStory.nextStoryStep()

    // Return nothing if story ended
    if (!nextStep) return null

    // Update globalVariables if there are global variables
    const currentGlobalVariables = inkStory.getGlobalVariables()
    if (currentGlobalVariables) setGlobalVariables(currentGlobalVariables)

    // Update specialTags if there are special tags
    const nextSpecialTags = nextStep.tags.filter((tag) => tag.includes(':'))
    if (nextSpecialTags.length) handleUpdateSpecialTags(nextSpecialTags)

    // Update currentKnot if chapter is retrieved
    const nextCurrentKnot = nextStep.currentKnot
    if (nextCurrentKnot) setCurrentKnot(nextCurrentKnot)

    // Update paragraphs
    const normalTags = nextStep.tags.filter((tag) => !tag.includes(':'))
    const paragraphValues = {
      text: nextStep.paragraph,
      tags: normalTags,
      currentKnot: nextStep.currentKnot,
    }
    setParagraphs([...paragraphs, paragraphValues])

    // Update choices if there's choices
    if (nextStep.choices.length) {
      const nextChoices = nextStep.choices.map((choice) => {
        return {
          text: choice.text,
          index: choice.index,
          tags: normalTags,
          currentKnot: nextStep.currentKnot,
        }
      })
      return setChoices(nextChoices)
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
    setCurrentKnot(null)
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
      currentKnot,
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
    setCurrentKnot(savedStateRes.currentKnot)
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
    currentKnot,
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
