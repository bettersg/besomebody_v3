const initInk = (storyApi, json) => {
  const inkStory = new storyApi(json)

  const nextStoryStep = () => {
    if (inkStory.canContinue) {
      inkStory.Continue()
      if (inkStory.state.currentText === '') {
        return nextStoryStep()
      }

      const currentKnotTag = inkStory.currentTags
        .find((tag) => tag.includes('knot:'))
        ?.split(':')[1]
      const currentKnot = inkStory.currentChoices.length
        ? inkStory.currentChoices[0].sourcePath?.split('.')[0]
        : inkStory.state.currentPathString?.split('.')[0]

      const values = {
        paragraph: inkStory.state.currentText,
        choices: inkStory.currentChoices,
        tags: inkStory.currentTags || [],
        currentKnot: currentKnot || currentKnotTag,
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
}
