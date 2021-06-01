// Do not need to update unless we are planning to have more number of endings
export const ENDING_ENUM = {
  ENDING_ONE: 'ENDING_ONE',
  ENDING_TWO: 'ENDING_TWO',
  ENDING_THREE: 'ENDING_THREE',
}

// TODO: Update with real characters
export const CHARACTER_ENUM = {
  NADID: 'NADID',
  DAVID: 'DAVID',
}

// TODO: Update with real character chapters and more chapters
export const CHAPTER_ENUM = {
  NADID_CHAPTER_1: 'NADID_CHAPTER_1',
  NADID_CHAPTER_2: 'NADID_CHAPTER_2',
  DAVID_CHAPTER_1: 'DAVID_CHAPTER_1',
  DAVID_CHAPTER_2: 'DAVID_CHAPTER_2',
}

// Story map that uses the ENUMs above for the ids, and free form strings for the names, 
// as we can expect the names to change, but the ids to remain constant.
// TODO: Update with real characters and chapters
export const STORY_MAP = [
  {
    id: CHARACTER_ENUM.NADID,
    name: 'Nadia',
    chapters: [
      {
        id: CHAPTER_ENUM.NADID_CHAPTER_1,
        name: 'Family Matters',
        endings: [
          {
            id: ENDING_ENUM.ENDING_ONE,
            name: "Nadid's Happy Ending",
          },
          {
            id: ENDING_ENUM.ENDING_TWO,
            name: "Nadid's Sad Ending",
          },
          {
            id: ENDING_ENUM.ENDING_THREE,
            name: "Nadid's Neutral & Gavin's Happy Ending",
          },
        ],
      },
      {
        id: CHAPTER_ENUM.NADID_CHAPTER_2,
        name: 'The Anniversary',
        endings: [
          {
            id: ENDING_ENUM.ENDING_ONE,
            name: "Nadid's Happy & Gavin's Sad Ending",
          },
          {
            id: ENDING_ENUM.ENDING_TWO,
            name: "Nadid's Sad & Gavin's Happy Ending",
          },
        ],
      },
    ],
  },
  {
    id: CHARACTER_ENUM.DAVID,
    name: 'Dave Alonso',
    chapters: [
      {
        id: CHAPTER_ENUM.DAVID_CHAPTER_1,
        name: 'The Bully',
        endings: [
          {
            id: ENDING_ENUM.ENDING_ONE,
            name: "David's Happy Ending",
          },
          {
            id: ENDING_ENUM.ENDING_TWO,
            name: "David's Sad Ending",
          },
          {
            id: ENDING_ENUM.ENDING_THREE,
            name: "David's Neutral & Jason's Happy Ending",
          },
        ],
      },
      {
        id: CHAPTER_ENUM.DAVID_CHAPTER_2,
        name: 'The Wedding',
        endings: [
          {
            id: ENDING_ENUM.ENDING_ONE,
            name: "David's Happy & Jason's Sad Ending",
          },
          {
            id: ENDING_ENUM.ENDING_TWO,
            name: "David's Sad & Jason's Happy Ending",
          },
        ],
      },
    ],
  },
]
