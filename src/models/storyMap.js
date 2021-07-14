import NadiaInk from '../stories/nadia.ink.json'
import AmanInk from '../stories/aman.ink.json'

// TODO: Update with other properties such as character image, character bio, chapter summary, etc
/* 
CHARACTER_MAP =
characterId (int), 
name (string), 
profileImage (string), 
description (string), 
jsonLink (string), 
playable (boolean)
variables [] -> character specific variables to track?
  ?
chapters []
  chapterId (int)
  number (int)  -> to remove later
  title (str)
  knotTag (str)
  summary (str)
  playable (bool)  <- TODO: the chapters should only be playable once the player has finished the previous chapter. This implementation is wrong.
  endings []
    endingId
    name
    inkVar
 
 -> to add the primary colour and secondary colour info for each character based on the UI design.
 
*/

export const CHARACTER_MAP = [
  {
    characterId: 1,
    name: "Nadia Ibrahim",
    linkName: "nadia",
    characterIntroImage: "/character_choice_page/nadia.png", 
    profileImage: "/images/nadia_profile.png",
    description: "Nadia wants to become a doctor - but will love and religion get in the way?",
    jsonLink: '../stories/nadia.ink.json',
    jsonFile: NadiaInk,
    primaryColour: '#FB5A3F',
    secondaryColour: '#664EFC',
    playable: true,
    variables: {
      nadia_mood: 5,
      gavin_mood: 5,
    },
    chapters: [
      {
        chapterId: 1,
        number: 1,
        title: "Study Buddy",
        knotTag: "nadia_1_intro",
        summary: "Nadia gets cornered by her father about being with Gavin. What should she do?",
        playable: true,
        images: [
          "/images/nadia_1_intro.jpg",
          "/images/nadia_1_night_street.jpg",
          "/images/nadia_1_hdb_carpark.jpg",
        ],
        endings: [
          {
            endingId: 1,
            title: "Break Up",
            inkVar: "nadia_1_ending_1",
          },
          {
            endingId: 2,
            title: "One Step at a Time",
            inkVar: "nadia_1_ending_2",
          },
          {
            endingId: 3,
            title: "Stay Together",
            inkVar: "nadia_1_ending_3",
          },
        ]
      },
      {
        chapterId: 2,
        number: 2,
        title: "School Bullies",
        knotTag: "nadia_1_1",
        summary: "Zhi Hao teases Nadia - should she tell him off?",
        playable: false,
        images : ["cat.jpg", "dog.jpg"],
        endings: [
          {
            endingId: 1,
            title: "Scold Him",
            inkVar: "nadia_chapter2_ending_1",
          },
          {
            endingId: 2,
            title: "Walk Away",
            inkVar: "nadia_chapter2_ending_2",
          },
        ]
      },
      {
        chapterId: 3,
        number: 3,
        title: "The Anniversary",
        knotTag: "break_up",
        summary: "Gavin and Nadia are celebrating their one month together - but is their status public or private?",
        playable: false,
        endings: [
          {
            endingId: 1,
            title: "Public",
            inkVar: "nadia_chapter3_ending_1",
          },
          {
            endingId: 2,
            title: "Private",
            inkVar: "nadia_chapter3_ending_2",
          },
        ]
      },
    ],

  },
  {
    characterId: 2,
    name: "Aman Singh",
    linkName: "aman",
    characterIntroImage: "/character_choice_page/aman.png", 
    profileImage: "https://images.generated.photos/7PFNUmz7LLOsqCFQwANR09dLK1EWwS_r0XyJeh59CIQ/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAzOTI3MzIuanBn.jpg",
    description: "Aman wants to model and study overseas - but will his culture make things harder?",
    jsonLink: '../stories/aman.ink.json',
    jsonFile: AmanInk,
    primaryColour: '#19A3AD',
    secondaryColour: '#FFBB0B',
    playable: true,
    variables: {
      aman_mood: 5,
    },
    chapters: [
      {
        chapterId: 1,
        number: 1,
        title: "Duty Calls",
        knotTag: "aman_1_intro",
        summary: "Aman prepares to enlist in National Service. Will he go in as he is, or take a big step to blend in?",
        playable: true,
        images: [
          "/images/aman_1_intro.jpg",
          "/images/aman_barbershop_floor.jpg",
          "/images/aman_barbershop.jpg",
          "/images/aman_bedroom.jpg",
          "/images/aman_drawer.jpg",          
          "/images/aman_sikh_event_hall.jpg",
          "/images/whatsapp.png",
        ],
        endings: [
          {
            endingId: 1,
            title: "Cut Hair",
            inkVar: "aman_1_ending_1",
          },
          {
            endingId: 2,
            title: "Keep Hair",
            inkVar: "aman_1_ending_2",
          }, 
        ]
      },
      {
        chapterId: 2,
        number: 2,
        title: "To Be or Not To Be",
        knotTag: "aman_2_intro",
        summary: "Aman tries to crack the silver screen - but it’s even harder than he imagined.",
        playable: true,
        images : ["cat.jpg", "dog.jpg"],
        endings: [
          {
            endingId: 1,
            title: "Movie Role",
            inkVar: "aman_chapter2_ending_1",
          },
        ]
      },
      {
        chapterId: 3,
        number: 3,
        title: "Fight or Flight",
        knotTag: "aman_2_6_narration",
        summary: "All Aman wants is to celebrate with friends. Why does everything have to be so difficult?",
        playable: false,
        images : ["cat.jpg", "dog.jpg"],
        endings: [
          {
            endingId: 1,
            title: "Stay",
            inkVar: "aman_chapter3_ending_1",
          },
          {
            endingId: 2,
            title: "Leave",
            inkVar: "aman_chapter3_ending_2",
          },
        ]
      },
      {
        chapterId: 4,
        number: 4,
        title: "Outfield",
        knotTag: "aman_1_10_narration",
        summary: "Aman wants to go overseas for uni, but his girlfriend Sonya is staying in Singapore.",
        playable: false,
        images : ["cat.jpg", "dog.jpg"],

        endings: [
          {
            endingId: 1,
            title: "Stay",
            inkVar: "aman_chapter3_ending_1",
          },
          {
            endingId: 2,
            title: "Leave",
            inkVar: "aman_chapter3_ending_2",
          },
        ]
      },
    ],
  },
  {
    characterId: 3,
    name: "Zaina Ismail",
    linkName: "",
    profileImage: "https://images.generated.photos/DQHHu8JTFXU0kjR5resS59oVA1OzC7RNlSleKxeFWSI/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAyMzk4NzguanBn.jpg",
    description: "Zaina is a great teacher - but can she balance her family, her career, and her feelings?",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
  {
    characterId: 4,
    name: "Zhi Hao Chan",
    linkName: "",
    profileImage: "https://images.generated.photos/rB_1dF254abgibQU0cuxULnYB5RLI94A10C4YYnWbMA/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA4NzY5NTIuanBn.jpg",
    description: "Zhi Hao seems to have an easy life - but will his hidden struggles derail his friendships?",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
  {
    characterId: 5,
    name: "Marie Oswald",
    linkName: "",
    profileImage: "https://images.generated.photos/Dz5nY_-KvnFjqXQCKJDd1-eFgiIRmKQ3OErG7kRIHjg/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA3Mzk2MzkuanBn.jpg",
    description: "Marie has a storyline, and it will be awesome - but we don't know what it is yet.",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
];

// export const STORY_MAP = [
//   {
//     id: 1,
//     name: 'Nadia',
//     chaptDetails: [
//       {
//           new: true, 
//           startChapt: 6, 
//           endChapt: 10, 
//           title: "Family Matters",
//           endingUnlocked: 0, 
//           endingAvail: 3,
//           replay: false,
//           knot_link: "/story/nadia",
//           chapter_summary: "This is a summary of what happened"
//       }, 
//       {
//           new: false, 
//           startChapt: 5, 
//           endChapt: 10, 
//           title: "The Anniversary",
//           endingUnlocked: 1, 
//           endingAvail: 3,
//           replay: true 
//       }, 
//       {
//           new: false, 
//           startChapt: 4, 
//           endChapt: 10, 
//           title: "The Bully",
//           endingUnlocked: 3, 
//           endingAvail: 3,
//           replay: true 
//       }, 
//       {
//           new: false, 
//           startChapt: 3, 
//           endChapt: 10, 
//           title: "The Bully",
//           endingUnlocked: 3, 
//           endingAvail: 3,
//           replay: true 
//       }      
//     ],
//     chapters: [
//       {
//         id: 1,
//         name: 'Family Matters',
//         inkJson: nadiaInk,
//         endings: [
//           {
//             id: 1,
//             name: "nadia's Happy Ending",
//           },
//           {
//             id: 2,
//             name: "nadia's Sad Ending",
//           },
//           {
//             id: 3,
//             name: "nadia's Neutral & Gavin's Happy Ending",
//           },
//         ],
//       },
//     ],
//   },
//   {
//     id: 2,
//     name: 'Aman',
//     chapters: [
//       {
//         id: 1,
//         name: 'The Haircut',
//         inkJson: AmanInk,
//         endings: [
//           {
//             id: 1,
//             name: "David's Happy Ending",
//           },
//           {
//             id: 2,
//             name: "David's Sad Ending",
//           },
//           {
//             id: 3,
//             name: "David's Neutral & Jason's Happy Ending",
//           },
//         ],
//       },
//     ],
//   },
// ]
