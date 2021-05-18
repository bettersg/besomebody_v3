const STORY_VALUE_TYPE = {
  CHOICE: 'choice',
  TEXT: 'text',
}

const initInk = (storyApi, json) => {
  const inkStory = new storyApi(json)

  const nextStoryStep = () => {
    if (inkStory.currentChoices.length) {
      const values = {
        type: STORY_VALUE_TYPE.CHOICE,
        values: inkStory.currentChoices,
        tags: inkStory.currentTags,
      }
      return values
    }

    if (inkStory.canContinue) {
      const text = inkStory.Continue()
      if (text === '\n') {
        return nextStoryStep()
      }

      const values = {
        type: STORY_VALUE_TYPE.TEXT,
        values: text,
        tags: inkStory.currentTags,
      }
      return values
    }
  }

  const getGlobalVariables = () => {
    const globalVariables = {}
    inkStory.variablesState._globalVariables.forEach(({ value }, inkKey) => {
      globalVariables[inkKey] = value
    })

    return globalVariables
  }

  const selectChoice = (choiceIndex) => {
    inkStory.ChooseChoiceIndex(choiceIndex)
  }

  const resetStory = () => {
    inkStory.ResetState()
  }

  const startStoryFrom = (pathString) => {
    inkStory.ChoosePathString(pathString)
  }

  const saveStoryState = () => {
    return inkStory.state.ToJson()
  }

  const loadStoryState = (savedState) => {
    inkStory.state.LoadJson(savedState)
  }

  return {
    nextStoryStep,
    getGlobalVariables,
    selectChoice,
    resetStory,
    startStoryFrom,
    saveStoryState,
    loadStoryState,
  }
}

module.exports = {
  initInk: initInk,
  STORY_VALUE_TYPE: STORY_VALUE_TYPE,
}
