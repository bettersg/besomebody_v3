const initInk = (storyApi, json) => {
  const inkStory = new storyApi(json)

  const nextStoryStep = () => {
    if (inkStory.currentChoices.length) {
      const values = {
        type: 'choice',
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
        type: 'text',
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
    const chatgroupTitle = inkStory.variablesState['chatgroupTitle']
    const chatgroupImage = inkStory.variablesState['chatgroupImage']

    const variables = {
      ui,
      background,
      leftCharacter,
      rightCharacter,
      chatgroupTitle,
      chatgroupImage,
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
  initInk: initInk,
}
