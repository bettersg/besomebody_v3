import NadiaInk from '../stories/nadia.ink.json'
import AmanInk from '../stories/aman.ink.json'
import RaviInk from '../stories/ravi.ink.json'

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
 
// reflectionIDs: aman 1,5,6 | nadia 2,3,4 |  ravi 7,8,9,10,11 |  zhihao 12,13,14 

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
          {
            characterName: 'Rahman',
            characterImage: '/shareable_avatars/rahman.png',
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
    description: "National Service, family expectations, personal dreams, and faith - must Aman give up something he values in order to succeed?",
    characterIntroImage: "/character_choice_page/aman.png", 
    jsonLink: '../stories/aman.ink.json',
    jsonFile: AmanInk,
    primaryColour: '#172153',
    secondaryColour: '#FFBB0B',
    playable: true,
    newestChapter: 3,
    variables: {
      aman_mood: 5,
    },
    chapters: [
      {
        chapterId: 1,
        number: 1,
        reflectionId:1,
        title: "Call of Duty",
        knotTag: "aman_1_intro",
        summary: "Aman enlists in National Service. It’s a proud moment for his family, but Aman is uneasy...",
        playable: true,
        images: [
          "/images/pixel.png",          
          "/images/ui_aman_message.jpg",
          "/images/whatsapp.png",
          "/images/ico_aman_selinder.png",          
          "/images/ico_aman_zhihao.png",          
          "/images/ico_aman_family.png",          
          "/images/ico_aman_extendedfamily.png",          
          "/images/bg_aman_intro.jpg",
          "/images/bg_aman_bedroom.jpg",
          "/images/bg_aman_bmtparadesquare.jpg",
          "/images/bg_aman_bmtbunk.jpg",
          "/images/bg_aman_bmtbunknight.jpg",          
          "/images/bg_aman_bmtcampoutside.jpg",
          "/images/bg_aman_bmtmirrorgrin.jpg",
          "/images/bg_aman_bmtmirrorsad.jpg",
          "/images/bg_aman_bmtpotianak.jpg",
          "/images/bg_aman_bmtmirrorgrin.jpg",
          "/images/cha_aman_sergeant_normal.png",
          "/images/bg_aman_bmtcookhouse.jpg",
          "/images/bg_aman_indianrestaurant.jpg",
          "/images/bg_aman_bmtbunk.jpg",
          "/images/bg_aman_bmttoilet.jpg",
          "/images/bg_aman_bmtcamp.jpg",
          "/images/bg_aman_ordturban.jpg",
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
          "/images/cha_aman_jothi_normal.png",          
          "/images/cha_aman_jothi_concerned.png",
          "/images/cha_aman_jothi_sad.png",
          "/images/cha_aman_jothi_diva.png",
          "/images/cha_aman_jothi_angry.png",
          "/images/cha_aman_lukman_normal.png",
          "/images/cha_aman_lukman_sad.png",
          "/images/cha_aman_lukman_hurt.png",
          "/images/cha_aman_lukman_curious.png",
          "/images/cha_aman_lukman_curious_shorts.png",
          "/images/cha_aman_lukman_determined_shorts.png",
          "/images/cha_aman_lukman_normal_shorts.png",
          "/images/cha_aman_lukman_sad_shorts.png",
          "/images/cha_aman_papa_normal.png",
          "/images/cha_aman_papa_stern.png",
          "/images/cha_aman_mama_happy.png",
          "/images/cha_aman_mama_concerned.png",
          "/images/cha_aman_bunkmate1_mocking.png",
          "/images/cha_aman_bunkmate2_afraid.png",
          "/images/cha_aman_bunkmate2_mocking.png",
          "/images/cha_aman_sergeant_irritated.png",
          "/images/cha_aman_sergeant_normal.png",
        ],
        endings: [
          {
            endingId: 1,
            title: "Aman tells his family about his passion for acting",
            inkVar: "chapter_1_ending_1",
          },
          {
            endingId: 2,
            title: "Aman hides his passion for acting from his family",
            inkVar: "chapter_1_ending_2",
          }, 
        ]
      },
      {
        chapterId: 2,
        number: 2,
        reflectionId:5,
        title: "Price of Admission",
        knotTag: "aman_2_intro",
        summary: "Aman discovers talent is not enough to crack the silver screen. Where will he draw the line?",
        playable: true,
        images: [
          '/images/bg_aman_beach.jpg',
          '/images/bg_aman_bedroom.jpg',
          '/images/bg_aman_cafe.jpg',
          '/images/bg_aman_casting_calls.jpg',
          '/images/bg_aman_casting.jpg',
          '/images/bg_aman_intro.jpg',
          '/images/cha_aman_alison_normal.png',
          '/images/cha_aman_alison_upset.png',
          '/images/cha_aman_jothi_diva.png',
          '/images/cha_aman_jothi_eyeroll.png',
          '/images/cha_aman_jothi_hairflip.png',
          '/images/cha_aman_jothi_normal.png',
          '/images/cha_aman_jothi_sad.png',
          '/images/cha_aman_selinder_annoyed.png',
          '/images/cha_aman_selinder_confused.png',
          '/images/cha_aman_selinder_normal.png',
          '/images/cha_aman_selinder_sad.png',
          '/images/pixel.png',
          '/images/ui_aman_message.jpg',
          '/images/whatsapp.png',
        ],
        endings: [
          {
            endingId: 1,
            title: "Aman did not get the role",
            inkVar: "chapter_2_ending_1",
          },
          {
            endingId: 2,
            title: "Aman got the role, but is ashamed",
            inkVar: "chapter_2_ending_2",
          },          
        ]
      },
      {
        chapterId: 3,
        number: 3,
        reflectionId:6,
        title: "The Show Must Go On",
        knotTag: "aman_3_intro",
        summary: "After a shocking argument, Aman must decide how his life’s script will unfold.",
        playable: true,
        images: [
          '/images/bg_aman_intro.jpg',
          '/images/bg_aman_gurdwara.jpg',
          '/images/bg_aman_home.jpg',
          '/images/bg_aman_bedroom.jpg',
          '/images/bg_aman_papastudy.jpg',          
          '/images/cha_aman_unclepritam_normal.png',
          '/images/cha_aman_unclepritam_puzzled.png',
          '/images/cha_aman_auntysuvinder_normal.png',
          '/images/cha_aman_selindergurdwara_annoyed.png',
          '/images/cha_aman_selindergurdwara_sad.png',
          '/images/cha_aman_selindergurdwara_angry.png',
          '/images/cha_aman_mama_normal.png',
          '/images/cha_aman_mama_concerned.png',
          '/images/cha_aman_papa_normal.png',
          '/images/cha_aman_papa_happy.png',
          '/images/cha_aman_jothi_normal.png',
          '/images/cha_aman_jothi_eyeroll.png',
          '/images/cha_aman_jothi_hairflip.png',
          '/images/cha_aman_jothi_diva.png',
          '/images/cha_aman_jothi_sad.png',
          '/images/pixel.png',
          '/images/whatsapp.png',
          '/images/ui_aman_message.jpg',
          '/images/ico_aman_selinder.png',
          '/images/ico_aman_extendedfamily.png',
          '/images/ico_aman_jothi.png',
        ],
        endings: [
          {
            endingId: 1,
            title: "Aman chose consulting, but did not speak to his father",
            inkVar: "chapter_3_ending_1",
          },
          {
            endingId: 2,
            title: "Aman chose acting, but did not speak to his father",
            inkVar: "chapter_3_ending_2",
          },
          {
            endingId: 3,
            title: "Aman chose consulting, and spoke to his father",
            inkVar: "chapter_3_ending_3",
          },
          {
            endingId: 4,
            title: "Aman chose acting, and spoke to his father",
            inkVar: "chapter_3_ending_4",
          },
        ]
      }, 
    ],
    reflectionBrowser: [
      {         
        title: "Reflection Browser",
        knotTag: "story_end_browser",
        summary: "Aman's story in the game has ended, but the stories of all our players are waiting to be explored.",
        playable: true,
        images: [
          "/images/bg_aman_intro.jpg",         
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
        ],
        empathyCharacters: [
          {
            characterName: 'Aman',
            characterImage: '/shareable_avatars/aman.png',
          },
          {
            characterName: 'Jothi',
            characterImage: '/shareable_avatars/jothi.png',
          },
          {
            characterName: 'Selinder',
            characterImage: '/shareable_avatars/selinder.png',
          },
          {
            characterName: 'Lukman',
            characterImage: '/shareable_avatars/lukman.png',
          }
        ]
      },
    ]
  },
  {
    characterId: 3,
    name: "Ravi Kannasamy",
    linkName: "ravi",
    profileImage: "/images/profile_ravi.png",
    characterIntroImage: "/character_choice_page/ravi.png", 
    description: "Ravi dreams of being an aviation engineer - but can he push past the stereotypes and self-doubts?",
    jsonLink: '../stories/ravi.ink.json',
    jsonFile: RaviInk,
    playable: true,
    primaryColour: '#8DC000',
    secondaryColour: '#FF8944',
    newestChapter: 1,
    chapters: [
      {
        chapterId: 1,
        number: 1,
        reflectionId:7,
        title: "Home Truths",
        knotTag: "ravi_1_intro",
        summary: "Ravi's world is turned upside down, and he faces difficult choices in moving on.",
        playable: true,
        images: [           
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
          "/images/bg_ravi_pushpa_home.jpg",
          "/images/bg_ravi_rentals1.jpg",
          "/images/bg_ravi_rentals2.jpg",
          "/images/bg_ravi_rentals3.jpg",
          "/images/bg_ravi_fishcurry.jpg",
          "/images/bg_ravi_home.jpg",
          "/images/cha_ravi_mum_normal.jpg",
          "/images/cha_ravi_mum_worried.jpg",
          "/images/cha_ravi_revati_normal.jpg",
          "/images/cha_ravi_revati_concerned.jpg",
          "/images/ui_emailsent.png",
          "/images/ui_emailsent.png",
          "/images/ui_emailinbox.png",
          "/images/ui_emailsending.png",
          "/images/ico_ravi_james.png",
          "/images/ico_ravi_rebecca.png",
        ],
        endings: [
          {
            endingId: 1,
            title: "Ravi moves into the university dorm",
            inkVar: "chapter_1_ending_1",
          },
          {
            endingId: 2,
            title: "Ravi is still looking for a place to stay",
            inkVar: "chapter_1_ending_2",
          },
        ]
      },
      // {
      //   chapterId: 2,
      //   number: 2,
      //   reflectionId:8,
      //   title: "(merged with Chapter 1) ",
      //   knotTag: "ravi_2_2",
      //   summary: "Ravi decides to move out. But his choices are not that straightforward.",
      //   playable: true,
      //   images: [           
      //     "/images/bg_launch.jpg",
      //     "/images/bg_reflections.jpg",
      //   ],
      //   endings: [
      //     {
      //       endingId: 1,
      //       title: "Azlin gets upset with you",
      //       inkVar: "chapter2_ending_1",
      //     },
      //     {
      //       endingId: 2,
      //       title: "Azlin tells you to give him up",
      //       inkVar: "chapter2_ending_2",
      //     },
      //   ]
      // },
      {
        chapterId: 2,
        number: 2,
        reflectionId:8,
        title: "Coffee Shop Kannasamy ",
        knotTag: "ravi_2_intro",
        summary: "Ravi finds a new gig at a cafe. And possibly something more.",
        playable: false,
        images: [           
          "/images/bg_launch.jpg",
          "/images/bg_reflections.jpg",
        ],
        endings: [
          {
            endingId: 1,
            title: "Ravi shows concern for mum",
            inkVar: "chapter2_ending_1",
          },
          {
            endingId: 2,
            title: "Ravi is confused by the news",
            inkVar: "chapter2_ending_2",
          },
        ]
      },
      {
        chapterId: 3,
        number: 3,
        reflectionId:9,
        title: "The Internship",
        knotTag: "ravi_3_intro",
        summary: "Ravi lands an internship to fulfill his university credits. And finds himself in a situation that tests him.",
        playable: false,
        images: [           
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
        chapterId: 4,
        number: 4,
        reflectionId:10,
        title: "Cleared for Take Off",
        knotTag: "ravi_4_intro",
        summary: "Ravi breaks down and reveals his fears to both Valerie and Revati. They give him a new perspective, and much-needed reminders. ",
        playable: false,
        images: [           
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
    ],
  }, 
  {
    characterId: 4,
    name: "Zhihao Lim",
    linkName: "",
    profileImage: "/images/profile_zhihao.png",
    characterIntroImage:  "/character_choice_page/zhihao.png",
    description: "Zhihao might have a future in e-sports, but will it disappear before his eyes? Life is about to get complicated, as a fateful Tweet gains a life of its own...",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
  {
    characterId: 5,
    name: "Unaisah Begum",
    linkName: "",
    profileImage: "/images/profile_unaisah.png",
    characterIntroImage:  "/character_choice_page/unaisah.png",
    description: "Unaisah wants to excel as a new teacher - but can she break the glass ceiling while dealing with things at home?",
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  }, 
  {
    characterId: 6,
    name: "Marie da Costa",
    linkName: "",
    profileImage: "/images/profile_blank.png",
    characterIntroImage:  "/images/instagram_blank.png",
    description: "Marie wants to open her own cafe - but will her heritage and gender stand in the way of her success?",
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
