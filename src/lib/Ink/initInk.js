const STORY_VALUE_TYPE = {
  CHOICE: 'choice',
  TEXT: 'text',
}

const INK_VARIABLE_UI = 'ui'
const INK_VARIABLE_BACKGROUND = 'background'
const INK_VARIABLE_LEFT_CHARACTER = 'leftCharacter'
const INK_VARIABLE_RIGHT_CHARACTER = 'rightCharacter'
const INK_VARIABLE_CHATGROUP_TITLE = 'chatgroupTitle'
const INK_VARIABLE_CHATGROUP_IMAGE = 'chatgroupImage'

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

  const getVariables = () => {
    const ui = inkStory.variablesState[INK_VARIABLE_UI]
    const background = inkStory.variablesState[INK_VARIABLE_BACKGROUND]
    const leftCharacter = inkStory.variablesState[INK_VARIABLE_LEFT_CHARACTER]
    const rightCharacter = inkStory.variablesState[INK_VARIABLE_RIGHT_CHARACTER]
    const chatgroupTitle = inkStory.variablesState[INK_VARIABLE_CHATGROUP_TITLE]
    const chatgroupImage = inkStory.variablesState[INK_VARIABLE_CHATGROUP_IMAGE]

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
    getVariables,
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
