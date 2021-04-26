const EVENT_TYPE_ENUM = {
  CHOICE: 'choice',
  TEXT: 'text',
}

const inkJs = (storyApi, json, EVENT_TYPE_ENUM) => {
  const inkStory = new storyApi(json)

  const nextStoryStep = () => {
    if (inkStory.currentChoices.length) {
      const values = {
        type: EVENT_TYPE_ENUM.CHOICE,
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
        type: EVENT_TYPE_ENUM.TEXT,
        values: text,
        tags: inkStory.currentTags,
      }
      return values
    }
  }

  const allVariables = () => {
    const ui = inkStory.variablesState['ui']
    const background = inkStory.variablesState['background']
    const leftCharacter = inkStory.variablesState['leftCharacter']
    const rightCharacter = inkStory.variablesState['rightCharacter']

    const variables = {
      ui,
      background,
      leftCharacter,
      rightCharacter,
    }

    return variables
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
    allVariables,
    selectChoice,
    resetStory,
    startStoryFrom,
    saveStoryState,
    loadStoryState,
  }
}

module.exports = {
  inkJs: inkJs,
  EVENT_TYPE_ENUM: EVENT_TYPE_ENUM,
}
