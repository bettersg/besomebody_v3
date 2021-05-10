import { renderHook, act } from '@testing-library/react-hooks'
import { waitFor } from '@testing-library/react'
import useInk from './useInk'
import testJson from './test.ink.json'
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

    createDbSavedStates.mockReturnValue(true)
    getDbSavedStates.mockReturnValue({
      paragraphs: [{ text: 'test paragraph', tags: ['test tag'] }],
      specialTags: {
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      },
      inkJson: JSON.stringify(mockJson),
    })
    deleteDbSavedStates.mockReturnValue(true)
  })

  it('should display default states', async () => {
    const { result } = renderHook(() => useInk(testJson))
    const {
      isStoryStarted,
      paragraphs,
      choices,
      specialTags,
      hasSavedState,
    } = result.current

    await waitFor(() => {
      // Expected default states
      expect(isStoryStarted).toBe(false)
      expect(paragraphs).toMatchObject([])
      expect(choices).toMatchObject([])
      expect(specialTags).toMatchObject({})
      expect(hasSavedState).toBe(false)
    })
  })

  it('should start story, populate paragraphs, and populate specialTags', async () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    const { isStoryStarted, paragraphs, specialTags } = result.current
    await waitFor(() => {
      expect(isStoryStarted).toBe(true)
      expect(paragraphs.length).toBe(1)
      expect(specialTags).toMatchObject({
        ui: 'school',
        background: 'school.jpg',
        leftCharacter: 'Nadia_happy.jpg',
        rightCharacter: '',
      })
    })
  })

  it('should have choices and should be able to submit choice', async () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory 3 times
    act(() => {
      result.current.getStory()
    })
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
      expect(result.current.paragraphs.length).toBe(3)
      expect(result.current.choices).toMatchObject([])
    })
  })

  it('should reset story, paragraphs, and specialTags', async () => {
    const { result } = renderHook(() => useInk(testJson))

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
    })
  })

  it('should start story from whatsapp chapter', async () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run startStoryFrom with whatsapp string
    act(() => {
      result.current.startStoryFrom('whatsapp')
    })

    // Expect states to be populated
    const { isStoryStarted, paragraphs, specialTags } = result.current
    await waitFor(() => {
      expect(isStoryStarted).toBe(true)
      expect(paragraphs.length).toBe(1)
      expect(specialTags).toMatchObject({
        ui: 'whatsapp',
        background: 'whatsapp.png',
        chatgroupTitle: 'Gavin',
        chatgroupImage: 'Gavin_profile.jpg',
      })
    })
  })

  it('should save state', async () => {
    const { result } = renderHook(() => useInk(testJson))

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

  it('should load saved story', async () => {
    const { result } = renderHook(() => useInk(testJson))

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
    })
  })

  it('should clear saved state', async () => {
    const { result } = renderHook(() => useInk(testJson))

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
