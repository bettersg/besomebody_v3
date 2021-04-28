import { renderHook, act } from '@testing-library/react-hooks'
import useInk from './useInk'
import testJson from './test.ink.json'

describe('useInk Hook Test', () => {
  it('should display default states', () => {
    const { result } = renderHook(() => useInk(testJson))
    const {
      isStoryStarted,
      paragraphs,
      choices,
      specialTags,
      savedTexts,
    } = result.current

    // Expected default states
    expect(isStoryStarted).toBe(false)
    expect(paragraphs).toMatchObject([])
    expect(choices).toMatchObject([])
    expect(specialTags).toMatchObject({})
    expect(savedTexts).toBe(null)
  })

  it('should start story, populate paragraphs, and populate specialTags', () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    const { isStoryStarted, paragraphs, specialTags } = result.current
    expect(isStoryStarted).toBe(true)
    expect(paragraphs.length).toBe(1)
    expect(specialTags).toMatchObject({
      ui: 'school',
      background: 'school.jpg',
      leftCharacter: 'Nadia_happy.jpg',
      rightCharacter: '',
    })
  })

  it('should have choices and should be able to submit choice', () => {
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
    expect(result.current.choices.length).toBe(1)
    expect(result.current.paragraphs.length).toBe(2)

    // Submit choice using setChoice with a choice index
    act(() => {
      result.current.setChoice(result.current.choices[0].index)
    })

    // Expect paragraphs to increase and choices to be reset
    expect(result.current.paragraphs.length).toBe(3)
    expect(result.current.choices).toMatchObject([])
  })

  it('should reset story, paragraphs, and specialTags', () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    expect(result.current.isStoryStarted).toBe(true)
    expect(result.current.paragraphs.length).toBe(1)
    expect(result.current.specialTags).toMatchObject({
      ui: 'school',
      background: 'school.jpg',
      leftCharacter: 'Nadia_happy.jpg',
      rightCharacter: '',
    })

    // Run resetStory once
    act(() => {
      result.current.resetStory()
    })

    // Expect states to be reset to default states
    expect(result.current.isStoryStarted).toBe(false)
    expect(result.current.paragraphs).toMatchObject([])
    expect(result.current.specialTags).toMatchObject({})
  })

  it('should start story from whatsapp chapter', () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run startStoryFrom with whatsapp string
    act(() => {
      result.current.startStoryFrom('whatsapp')
    })

    // Expect states to be populated
    const { isStoryStarted, paragraphs, specialTags } = result.current
    expect(isStoryStarted).toBe(true)
    expect(paragraphs.length).toBe(1)
    expect(specialTags).toMatchObject({
      ui: 'whatsapp',
      background: 'whatsapp.png',
      chatgroupTitle: 'Gavin',
      chatgroupImage: 'Gavin_profile.jpg',
    })
  })

  it('should save story into json string', () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Run saveStory once
    act(() => {
      result.current.saveStory()
    })

    // Helper func to test if param is JSON string or not
    const isJson = (jsonString) => {
      try {
        JSON.parse(jsonString)
        return true
      } catch {
        return false
      }
    }

    // Expect savedTexts to be JSON string instead of null
    const { savedTexts } = result.current
    expect(isJson(savedTexts)).toBe(true)
  })

  it('should load saved story', () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory
    act(() => {
      result.current.getStory()
    })

    // Expect states to be populated
    expect(result.current.isStoryStarted).toBe(true)
    expect(result.current.paragraphs.length).toBe(1)
    expect(result.current.specialTags).toMatchObject({
      ui: 'school',
      background: 'school.jpg',
      leftCharacter: 'Nadia_happy.jpg',
      rightCharacter: '',
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
    expect(result.current.isStoryStarted).toBe(false)
    expect(result.current.paragraphs).toMatchObject([])
    expect(result.current.specialTags).toMatchObject({})

    // Run loadSavedStory
    act(() => {
      result.current.loadSavedStory(result.current.savedTexts)
    })

    // Expect states to be populated back again
    expect(result.current.isStoryStarted).toBe(true)
    expect(result.current.paragraphs.length).toBe(1)
    expect(result.current.specialTags).toMatchObject({
      ui: 'school',
      background: 'school.jpg',
      leftCharacter: 'Nadia_happy.jpg',
      rightCharacter: '',
    })
  })

  it('should clear saved state', () => {
    const { result } = renderHook(() => useInk(testJson))

    // Run getStory once
    act(() => {
      result.current.getStory()
    })

    // Run saveStory once
    act(() => {
      result.current.saveStory()
    })

    // Expect savedTexts to not be null
    expect(result.current.savedTexts).not.toBe(null)

    // Run resetSavedStory once
    act(() => {
      result.current.resetSavedStory()
    })

    // Expect savedTexts to be null
    expect(result.current.savedTexts).toBe(null)
  })
})
