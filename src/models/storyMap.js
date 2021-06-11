import NadidInk from '../stories/nadid.ink.json'
import AmanInk from '../stories/aman_chapter1.ink.json'

// TODO: Update with other properties such as character image, character bio, chapter summary, etc
/* 
CHARACTER_MAP =
characterId (int), 
name (string), 
profileImage (string), 
description (string), 
jsonLink (string), 
playable (boolean)
*/

export const CHARACTER_MAP = [
  {
    characterId: 1,
    name: "Nadia Ibrahim",
    linkName: "nadia",
    profileImage: "https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
    description: "Nadid wants to become a doctor - but will love and religion get in the way?",
    jsonLink: '../stories/nadid.ink.json',
    playable: true,

  },
  {
    characterId: 2,
    name: "Aman Singh",
    linkName: "aman",
    profileImage: "https://images.generated.photos/7PFNUmz7LLOsqCFQwANR09dLK1EWwS_r0XyJeh59CIQ/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAzOTI3MzIuanBn.jpg",
    description: "Aman wants to model and study overseas - but will his culture make things harder?",
    jsonLink: '../stories/aman_chapter1.ink.json',
    playable: true,

  },
  {
    characterId: 3,
    name: "Zaina Ismail",
    linkName: "",
    profileImage: "https://images.generated.photos/DQHHu8JTFXU0kjR5resS59oVA1OzC7RNlSleKxeFWSI/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAyMzk4NzguanBn.jpg",
    description: "Zaina is a great teacher - but can she balance her family, her career, and her feelings?",
    jsonLink: '../stories/nadid.ink.json',
    playable: false,
  }, 
  {
    characterId: 4,
    name: "Zhi Hao Chan",
    linkName: "",
    profileImage: "https://images.generated.photos/rB_1dF254abgibQU0cuxULnYB5RLI94A10C4YYnWbMA/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA4NzY5NTIuanBn.jpg",
    description: "Zhi Hao seems to have an easy life - but will his hidden struggles derail his friendships?",
    jsonLink: '../stories/nadid.ink.json',
    playable: false,
  }, 
  {
    characterId: 5,
    name: "Marie Oswald",
    linkName: "",
    profileImage: "https://images.generated.photos/Dz5nY_-KvnFjqXQCKJDd1-eFgiIRmKQ3OErG7kRIHjg/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA3Mzk2MzkuanBn.jpg",
    description: "Marie has a storyline, and it will be awesome - but we don't know what it is yet.",
    jsonLink: '../stories/nadid.ink.json',
    playable: false,
  }, 
];

export const STORY_MAP = [
  {
    id: 1,
    name: 'Nadia',
    chaptDetails: [
      {
          new: true, 
          startChapt: 6, 
          endChapt: 10, 
          title: "Family Matters",
          endingUnlocked: 0, 
          endingAvail: 3,
          replay: false,
          knot_link: "/story/nadid",
          chapter_summary: "This is a summary of what happened"
      }, 
      {
          new: false, 
          startChapt: 5, 
          endChapt: 10, 
          title: "The Anniversary",
          endingUnlocked: 1, 
          endingAvail: 3,
          replay: true 
      }, 
      {
          new: false, 
          startChapt: 4, 
          endChapt: 10, 
          title: "The Bully",
          endingUnlocked: 3, 
          endingAvail: 3,
          replay: true 
      }, 
      {
          new: false, 
          startChapt: 3, 
          endChapt: 10, 
          title: "The Bully",
          endingUnlocked: 3, 
          endingAvail: 3,
          replay: true 
      }      
    ],
    chapters: [
      {
        id: 1,
        name: 'Family Matters',
        inkJson: NadidInk,
        endings: [
          {
            id: 1,
            name: "Nadid's Happy Ending",
          },
          {
            id: 2,
            name: "Nadid's Sad Ending",
          },
          {
            id: 3,
            name: "Nadid's Neutral & Gavin's Happy Ending",
          },
        ],
      },
    ],
  },
  {
    id: 2,
    name: 'Aman',
    chapters: [
      {
        id: 1,
        name: 'The Haircut',
        inkJson: AmanInk,
        endings: [
          {
            id: 1,
            name: "David's Happy Ending",
          },
          {
            id: 2,
            name: "David's Sad Ending",
          },
          {
            id: 3,
            name: "David's Neutral & Jason's Happy Ending",
          },
        ],
      },
    ],
  },
]
