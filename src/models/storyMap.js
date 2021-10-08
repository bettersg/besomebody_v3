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
    name: "Nadia Binte Rahim",
    linkName: "nadia",
    profileImage: "/images/profile_nadia.png",
    description: "Nadia wants to survive JC and become a doctor - but will self-doubt and young love get in the way?",
    characterIntroImage: "/character_choice_page/nadia.png", 
    jsonLink: '../stories/nadia.ink.json',
    jsonFile: NadiaInk,
    primaryColour: '#FB5A3F',
    secondaryColour: '#664EFC',
    playable: true,
    newestChapter: 3,
    variables: {
      nadia_mood: 5,
      gavin_mood: 5,
    },
    chapters: [
      {
        chapterId: 1,
        reflectionId:2,
        number: 1,
        title: "An Unexpected Invitation",
        knotTag: "nadia_1_intro",
        summary: "Nadia's wardrobe choice gets questioned, and she is asked a surprising question by Gavin.",
        playable: true,
        images: [
          "/images/bg_nadia_intro.jpg",
          "/images/bg_nadia_schooldrivewayatnight.jpg",
          "/images/bg_nadia_fathercaratnight.jpg",
          "/images/cha_nadia_rahman_normal.png",
          "/images/bg_nadia_hdbcarpark.jpg",
          "/images/new_message_notification.jpg",
          "/images/ui_nadia_message.jpg",
          "/images/pixel.png",
          "/images/whatsapp.png",
          "/images/ico_nadia_gavin.png",
          "/images/bg_nadia_peclothes.jpg",
          "/images/bg_nadia_girlsbathroom.jpg",
          "/images/cha_nadia_chloe_grinning.png",
          "/images/cha_nadia_chloe_normal.png",
          "/images/cha_nadia_chloe_concerned.png",
          "/images/cha_nadia_chloe_confused.png",
          "/images/bg_nadia_canteen.jpg",
          "/images/cha_nadia_gavin_grinning.png",
          "/images/ico_nadia_azlin.png",
          "/images/cha_nadia_gavin_normal.png",
          "/images/cha_nadia_gavin_concerned.png",
          "/images/cha_nadia_gavin_nervous.png",
          "/images/bg_nadia_bus.jpg",
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
        ],
        endings: [
          {
            endingId: 1,
            title: "Nadia likes a type of guy",
            inkVar: "chapter_1_ending_1",
          },
          {
            endingId: 2,
            title: "Nadia doesn't have a type",
            inkVar: "chapter_1_ending_2",
          },
          {
            endingId: 3,
            title: "Nadia says Gavin is just a friend",
            inkVar: "chapter_1_ending_3",
          },
          {
            endingId: 4,
            title: "Nadia defends Gavin",
            inkVar: "chapter_1_ending_4",
          },
        ]
      },
      {
        chapterId: 2,
        number: 2,
        reflectionId:3,
        title: "The Date Crasher",
        knotTag: "nadia_2_intro",
        summary: "Nadia runs into some hard realities. Sometimes, having dreams isn't as straightforward as it should be.",
        playable: true,
        images: [
          "/images/bg_nadia_intro.jpg",
          "/images/bg_nadia_bedroom.jpg",
          "/images/bg_nadia_selfiehijab.jpg",
          "/images/bg_nadia_mall.jpg",
          "/images/bg_nadia_cinema.jpg",
          "/images/bg_nadia_library.jpg",          
          "/images/ui_nadia_message.jpg",
          "/images/bg_nadia_playgroundnight.jpg",          
          "/images/cha_nadia_gavin_casual_concerned.png",                  
          "/images/cha_nadia_gavin_casual_grinning.png",                  
          "/images/cha_nadia_gavin_casual_nervous.png",                  
          "/images/cha_nadia_gavin_casual_normal.png",                  
          "/images/cha_nadia_chloe_school_concerned.png",                  
          "/images/cha_nadia_chloe_school_confused.png",
          "/images/cha_nadia_chloe_school_frustrated.png",                  
          "/images/cha_nadia_chloe_school_grinning.png",                  
          "/images/cha_nadia_chloe_school_normal.png",
          "/images/cha_nadia_chloe_school_sad.png",
          "/images/cha_nadia_azlin_normal.png",
          "/images/cha_nadia_azlin_teasing.png",
          "/images/cha_nadia_azlin_angry.png",
          "/images/cha_nadia_azlin_happy.png",
          "/images/cha_nadia_azlin_confused.png",
          "/images/cha_nadia_azlin_concerned.png",
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
        ],
        endings: [
          {
            endingId: 1,
            title: "Azlin gets upset with you",
            inkVar: "chapter2_ending_1",
          },
          {
            endingId: 2,
            title: "Azlin tells you to give him up",
            inkVar: "chapter2_ending_2",
          },
        ]
      },
      {
        chapterId: 3,
        number: 3,
        reflectionId:4,
        title: "Fork in the Road",
        knotTag: "nadia_3_intro",
        summary: "As one door closes, another opens. But which girl will step through that door? As JC life comes to an end, only Nadia can choose.",
        playable: true,
        images: [
          "/images/bg_nadia_intro.jpg",
          "/images/bg_nadia_bedroom.jpg",
          "/images/bg_nadia_selfiehijab.jpg",
          "/images/bg_nadia_library.jpg",          
          "/images/ui_nadia_message.jpg",
          "/images/cha_nadia_gavin_casual_concerned.png",                  
          "/images/cha_nadia_gavin_casual_grinning.png",                  
          "/images/cha_nadia_gavin_casual_nervous.png",                  
          "/images/cha_nadia_gavin_casual_normal.png",                  
          "/images/cha_nadia_chloe_school_concerned.png",                  
          "/images/cha_nadia_chloe_school_confused.png",
          "/images/cha_nadia_chloe_school_frustrated.png",                  
          "/images/cha_nadia_chloe_school_grinning.png",                  
          "/images/cha_nadia_chloe_school_normal.png",
          "/images/cha_nadia_chloe_school_sad.png",
          "/images/cha_nadia_unaisah.png",
          "/images/cha_nadia_zhihao.png",
          "/images/bg_launch.jpg",
          "/images/bg_nadia_schoolhall.jpg",
          "/images/bg_nadia_chloehome.jpg",
          "/images/bg_nadia_gavinhome.jpg",
          "/images/bg_nadia_fathercaratday.jpg",        
        ],
        endings: [
          {
            endingId: 1,
            title: "Nadia and Gavin, together",
            inkVar: "chapter3_ending_1",
          },
          {
            endingId: 2,
            title: "Nadia keeps her options open",
            inkVar: "chapter3_ending_2",
          },          
          {
            endingId: 3,
            title: "Nadia moves forward alone",
            inkVar: "chapter3_ending_3",
          }, 
        ]
      },
    ],
    reflectionBrowser: [
      {         
        title: "Reflection Browser",
        knotTag: "story_end_browser",
        summary: "Nadia's story in the game has ended, but the stories of all our players are waiting to be explored.",
        playable: true,
        images: [
          "/images/bg_nadia_intro.jpg",         
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
        ],
        empathyCharacters: [
          {
            characterName: 'Nadia',
            characterImage: '/shareable_avatars/nadia.png',
          },
          {
            characterName: 'Azlin',
            characterImage: '/shareable_avatars/azlin.png',
          },
          {
            characterName: 'Gavin',
            characterImage: '/shareable_avatars/gavin.png',
          },
          {
            characterName: 'Chloe',
            characterImage: '/shareable_avatars/chloe.png',
          },


        ]
      },
    ]
  },
  {
    characterId: 2,
    name: "Aman Singh",
    linkName: "aman",
    profileImage: "/images/profile_aman.png",
    description: "Aman wants to act, model and find happiness in life. Must he change how he looks to fit in and succeed?",
    characterIntroImage: "/character_choice_page/aman.png", 
    jsonLink: '../stories/aman.ink.json',
    jsonFile: AmanInk,
    primaryColour: '#19A3AD',
    secondaryColour: '#FFBB0B',
    playable: true,
    newestChapter: 1,
    variables: {
      aman_mood: 5,
    },
    chapters: [
      {
        chapterId: 1,
        number: 1,
        reflectionId:1,
        title: "Duty Calls",
        knotTag: "aman_1_intro",
        summary: "Aman prepares to enlist in National Service. Will he go in as he is, or take a big step to blend in?",
        playable: true,
        images: [
          "/images/bg_aman_intro.jpg",
          "/images/bg_aman_sikheventhall.jpg",
          "/images/cha_aman_zhihao_joking.png",
          "/images/bg_aman_bedroom.jpg",
          "/images/cha_aman_jothi_casual.png",          
          "/images/bg_aman_drawerscissors.jpg",
          "/images/cha_aman_jothi_concerned.png",
          "/images/cha_aman_jothi_sad.png",
          "/images/pixel.png",          
          "/images/ui_aman_message.jpg",
          "/images/whatsapp.png",
          "/images/ico_aman_selinder.png",
          "/images/bg_aman_barbershopoutside.jpg",
          "/images/bg_aman_barbershopinside.jpg",
          "/images/bg_aman_barbershopcrowdstaring.jpg",
          "/images/bg_aman_barbershophairfloor.jpg",          
          "/images/bg_aman_barbershophairfloor2.jpg",
          "/images/bg_aman_barbershophairfloor3.jpg",
          "/images/bg_aman_haircutselfiephoto.jpg",          
          "/images/cha_aman_barber.png",
          "/images/ico_aman_family.png",
          "/images/aman_haircut_selfie.png",
          "/images/bg_aman_bmtparadesquare.jpg",
          "/images/cha_aman_sergeant_normal.png",
          "/images/cha_aman_lukman.png",
          "/images/bg_aman_bmtcookhouse.jpg",
          "/images/cha_aman_lukman_sad.png",
          "/images/bg_aman_indianrestaurant.jpg",
          "/images/cha_aman_papa.png",
          "/images/cha_aman_mama.png",
          "/images/bg_aman_bmtbunk.jpg",
          "/images/bg_aman_bmttoilet.jpg",
          "/images/cha_aman_nsf1.png",
          "/images/cha_aman_nsf2.png",
          "/images/bg_aman_bmtcamp.jpg",
          "/images/bg_aman_bmtcampoutside.jpg",
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
        ],
        endings: [
          {
            endingId: 1,
            title: "Aman cuts his hair for NS",
            inkVar: "aman_1_ending_1",
          },
          {
            endingId: 2,
            title: "Aman keeps his hair for NS",
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
        playable: false,
        images : ["/images/aman_1_intro.jpg"],
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
        knotTag: "aman_4_intro",
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
        title: "For The Love of God",
        knotTag: "aman_4_intro",
        summary: "Aman is presented with a huge decision that will affect his future and relationship. What will he choose? ",
        playable: false,
        images : ["/images/aman_1_intro.jpg", "dog.jpg"],

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
        chapterId: 5,
        number: 5,
        title: "Fly Away",
        knotTag: "aman_5_intro",
        summary: "Aman is off to Melbourne. Will he find himself in the land down under?",
        playable: false,
        images : ["/images/aman_1_intro.jpg","dog.jpg"],

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
    name: "Ravi Kannaswamy",
    linkName: "",
    profileImage: "/images/profile_blank.png",
    characterIntroImage:  "/images/instagram_blank.png",
    description: "Ravi dreams of being an aviation engineer - but can he push past the stereotypes and self-doubts?",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
  {
    characterId: 4,
    name: "Zhihao Lim",
    linkName: "",
    profileImage: "/images/profile_blank.png",
    characterIntroImage:  "/images/instagram_blank.png",
    description: "Zhihao might have a future in e-sports, but will it disappear before his eyes? Life is about to get complicated, as a fateful Tweet gains a life of its own...",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
  {
    characterId: 5,
    name: "Marie da Costa",
    linkName: "",
    profileImage: "/images/profile_blank.png",
    characterIntroImage:  "/images/instagram_blank.png",
    description: "Marie wants to open her own cafe - but will her heritage and gender stand in the way of her success?",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  },
  {
    characterId: 6,
    name: "Unaisah Begum",
    linkName: "",
    profileImage: "/images/profile_blank.png",
    characterIntroImage:  "/images/instagram_blank.png",
    description: "Unaisah wants to excel as a new teacher - but can she break the glass ceiling while dealing with things at home?",
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
