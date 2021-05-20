import { renderHook, act } from '@testing-library/react-hooks'
import { waitFor } from '@testing-library/react'
import useInk from './useInk'
import testJson from '../../stories/test.ink.json'
import { useAuth } from '../../contexts/AuthContext'
import {
  createDbSavedStates,
  deleteDbSavedStates,
  getDbSavedStates,
} from '../../models/saveStateModel'

jest.mock('../../contexts/AuthContext')
jest.mock('../../models/saveStateModel')

const mockJson = {
  choiceThreads: {
    3: {
      callstack: [
        {
          cPath: 'whatsapp.0.g-0.9',
          idx: 9,
          exp: false,
          type: 0,
          temp: { $r: { '^->': 'whatsapp.0.g-0.9.$r1' } },
        },
      ],
      threadIndex: 3,
      previousContentObject: 'whatsapp.0.g-0.9.8',
    },
    4: {
      callstack: [
        {
          cPath: 'whatsapp.0.g-0.10',
          idx: 11,
          exp: false,
          type: 0,
          temp: { $r: { '^->': 'whatsapp.0.g-0.10.$r1' } },
        },
      ],
      threadIndex: 4,
      previousContentObject: 'whatsapp.0.g-0.10.10',
    },
  },
  callstackThreads: {
    threads: [
      {
        callstack: [
          {
            exp: false,
            type: 0,
            temp: { $r: { '^->': 'whatsapp.0.g-0.10.$r1' } },
          },
        ],
        threadIndex: 1,
        previousContentObject: 'whatsapp.0.g-0.10.11',
      },
    ],
    threadCounter: 4,
  },
  variablesState: {},
  evalStack: [],
  outputStream: [
    '^even ma started crying. she said some shit about not raising me properly to have values and started praying that i will change like wtf i am happy with who i am and who i am with ',
    { '#': 'Speaker_self' },
    '\n',
  ],
  currentChoices: [
    {
      text: "i'm angry",
      index: 0,
      originalChoicePath: 'whatsapp.0.g-0.9.9',
      originalThreadIndex: 3,
      targetPath: 'whatsapp.0.g-0.c-2',
    },
    {
      text: "i'm really sad .",
      index: 1,
      originalChoicePath: 'whatsapp.0.g-0.10.11',
      originalThreadIndex: 4,
      targetPath: 'whatsapp.0.g-0.c-3',
    },
  ],
  visitCounts: { whatsapp: 1, '': 1, 'whatsapp.0.c-0': 1, 'whatsapp.0.g-0': 1 },
  turnIndices: {},
  turnIdx: 1,
  storySeed: 54,
  previousRandom: 0,
  inkSaveVersion: 8,
  inkFormatVersion: 19,
}

describe('useInk Hook Test', () => {
  beforeEach(() => {
    useAuth.mockReturnValue({
      currentUser: {
        uid: 'test-uid',
      },
    })

    createDbSavedStates.mockReturnValue()
    getDbSavedStates.mockReturnValue({
      paragraphs: [{ text: 'test paragraph', tags: ['test tag'] }],
      specialTags: {
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      },
      inkJson: JSON.stringify(mockJson),
      globalVariables: {
        nadid_mood: 5,
        gavin_mood: 5,
      },
      currentChapter: 'nadid_chapter6',
    })
    deleteDbSavedStates.mockReturnValue()
  })

  it('should display default states', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))
    const {
      isStoryStarted,
      paragraphs,
      choices,
      specialTags,
      globalVariables,
      currentChapter,
      hasSavedState,
    } = result.current

    await waitFor(() => {
      // Expected default states
      expect(isStoryStarted).toBe(false)
      expect(paragraphs).toMatchObject([])
      expect(choices).toMatchObject([])
      expect(specialTags).toMatchObject({})
      expect(globalVariables).toMatchObject({})
      expect(currentChapter).toBe(null)
      expect(hasSavedState).toBe(false)
    })
  })

  it('should start story, populate paragraphs, and populate specialTags', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    const {
      isStoryStarted,
      paragraphs,
      specialTags,
      globalVariables,
      currentChapter,
    } = result.current
    await waitFor(() => {
      expect(isStoryStarted).toBe(true)
      expect(paragraphs.length).toBe(1)
      expect(specialTags).toMatchObject({
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      })
      expect(globalVariables).toMatchObject({
        nadid_mood: 5,
        gavin_mood: 5,
      })
      expect(currentChapter).toBe('nadid_chapter6')
    })
  })

  it('should have choices and should be able to submit choice', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory 3 times
    act(() => {
      result.current.getStory()
    })
    act(() => {
      result.current.getStory()
    })

    // Expect paragraphs and choices to be populated
    await waitFor(() => {
      expect(result.current.choices.length).toBe(1)
      expect(result.current.paragraphs.length).toBe(2)
    })

    // Submit choice using setChoice with a choice index
    act(() => {
      result.current.setChoice(result.current.choices[0].index)
    })

    // Expect paragraphs to increase and choices to be reset
    await waitFor(() => {
      expect(result.current.choices.length).toBe(1)
      expect(result.current.paragraphs.length).toBe(3)
    })

    // Submit choice using setChoice with a choice index
    act(() => {
      result.current.setChoice(result.current.choices[0].index)
    })

    // Expect paragraphs to increase and choices to be reset
    await waitFor(() => {
      expect(result.current.paragraphs.length).toBe(4)
      expect(result.current.choices).toMatchObject([])
    })
  })

  it('should reset story, paragraphs, specialTags, globalVariables, and currentChapter', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    await waitFor(() => {
      expect(result.current.isStoryStarted).toBe(true)
      expect(result.current.paragraphs.length).toBe(1)
      expect(result.current.specialTags).toMatchObject({
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      })
      expect(result.current.globalVariables).toMatchObject({
        nadid_mood: 5,
        gavin_mood: 5,
      })
      expect(result.current.currentChapter).toBe('nadid_chapter6')
    })

    // Run resetStory once
    act(() => {
      result.current.resetStory()
    })

    // Expect states to be reset to default states
    await waitFor(() => {
      expect(result.current.isStoryStarted).toBe(false)
      expect(result.current.paragraphs).toMatchObject([])
      expect(result.current.specialTags).toMatchObject({})
      expect(result.current.globalVariables).toMatchObject({})
      expect(result.current.currentChapter).toBe(null)
    })
  })

  it('should start story from whatsapp chapter', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run startStoryFrom with whatsapp string
    act(() => {
      result.current.startStoryFrom('whatsapp')
    })

    // Expect states to be populated
    const {
      isStoryStarted,
      paragraphs,
      specialTags,
      globalVariables,
      currentChapter,
    } = result.current
    await waitFor(() => {
      expect(isStoryStarted).toBe(true)
      expect(paragraphs.length).toBe(1)
      expect(specialTags).toMatchObject({
        ui: 'whatsapp',
        background: 'whatsapp.png',
        chatgroupTitle: 'Gavin',
        chatgroupImage: 'Gavin_profile.jpg',
      })
      expect(globalVariables).toMatchObject({
        nadid_mood: 5,
        gavin_mood: 5,
      })
      expect(currentChapter).toBe('whatsapp')
    })
  })

  it('should save state', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Run saveStory once
    await act(async () => {
      await result.current.saveStory()
    })

    // Expect hasSavedState to be true
    const { hasSavedState } = result.current
    await waitFor(() => {
      expect(hasSavedState).toBe(true)
    })
  })

  it('should see that global variables changed', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Start story from WhatsApp chapter
    act(() => {
      result.current.startStoryFrom('whatsapp')
    })

    // Expect globalVariables to be default
    await waitFor(() => {
      expect(result.current.globalVariables).toMatchObject({
        nadid_mood: 5,
        gavin_mood: 5,
      })
    })

    // Run getStory 2 times
    act(() => {
      result.current.getStory()
    })
    act(() => {
      result.current.getStory()
    })

    // Expect choices to be populated
    await waitFor(() => {
      expect(result.current.choices.length).toBe(2)
    })

    // Submit choice and get story
    act(() => {
      result.current.setChoice(result.current.choices[0].index)
    })
    act(() => {
      result.current.getStory()
    })

    // Expect globalVariables to change, nadid_mood decreases
    await waitFor(() => {
      expect(result.current.globalVariables).toMatchObject({
        nadid_mood: 4,
        gavin_mood: 5,
      })
    })
  })

  it('should see that currentChapter changes', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory twice
    act(() => {
      result.current.getStory()
    })
    act(() => {
      result.current.getStory()
    })

    // Expect globalVariables to be default
    await waitFor(() => {
      expect(result.current.currentChapter).toBe('nadid_chapter6')
    })

    // Submit choice using setChoice with a choice index
    act(() => {
      result.current.setChoice(result.current.choices[0].index)
    })

    // Expect globalVariables to be default
    await waitFor(() => {
      expect(result.current.currentChapter).toBe('found_out')
    })
  })

  it('should load saved story', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    await waitFor(() => {
      expect(result.current.isStoryStarted).toBe(true)
      expect(result.current.paragraphs.length).toBe(1)
      expect(result.current.specialTags).toMatchObject({
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      })
      expect(result.current.globalVariables).toMatchObject({
        nadid_mood: 5,
        gavin_mood: 5,
      })
      expect(result.current.currentChapter).toBe('nadid_chapter6')
    })

    // Run saveStory
    act(() => {
      result.current.saveStory()
    })

    // Run resetStory
    act(() => {
      result.current.resetStory()
    })

    // Expect states to be reset
    await waitFor(() => {
      expect(result.current.isStoryStarted).toBe(false)
      expect(result.current.paragraphs).toMatchObject([])
      expect(result.current.specialTags).toMatchObject({})
      expect(result.current.globalVariables).toMatchObject({})
      expect(result.current.currentChapter).toBe(null)
    })

    // Run loadSavedStory
    act(() => {
      result.current.loadSavedStory()
    })

    // Expect states to be populated back again
    await waitFor(() => {
      expect(result.current.isStoryStarted).toBe(true)
      expect(result.current.paragraphs.length).toBe(1)
      expect(result.current.specialTags).toMatchObject({
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      })
      expect(result.current.globalVariables).toMatchObject({
        nadid_mood: 5,
        gavin_mood: 5,
      })
      expect(result.current.currentChapter).toBe('nadid_chapter6')
    })
  })

  it('should clear saved state', async () => {
    const { result } = renderHook(() => useInk(testJson, 'test'))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Run saveStory once
    act(() => {
      result.current.saveStory()
    })

    // Expect hasSavedState to be true
    await waitFor(() => {
      expect(result.current.hasSavedState).toBe(true)
    })

    // Run resetSavedStory once
    act(() => {
      result.current.resetSavedStory()
    })

    // Expect hasSavedState to be false
    await waitFor(() => {
      expect(result.current.hasSavedState).toBe(false)
    })
  })
})
