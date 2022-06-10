const GLOBAL_VAR_MAP = [
  {
    characterId: 1,
    name: 'Nadia Binte Rahim',
    linkName: 'nadia',
    profileImage: '/images/profile_nadia.png',
    description:
      'Nadia wants to survive JC and become a doctor - but will self-doubt and young love get in the way?',
    characterIntroImage: '/character_choice_page/nadia.png',
    primaryColour: '#FB5A3F',
    secondaryColour: '#664EFC',
    chapters: [
      {
        chapterId: 1,
        reflectionId: 2,
        number: 1,
        title: 'An Unexpected Invitation',
        knotTag: 'nadia_1_intro',
        summary:
          "Nadia's wardrobe choice gets questioned, and she is asked a surprising question by Gavin.",
        playable: true,

        endings: [
          {
            name: 'chapter_1_ending',
            value: 1,
            endingId: 1,
            title: 'Nadia likes a type of guy',
          },
          {
            name: 'chapter_1_ending',
            value: 2,
            endingId: 2,
            title: "Nadia doesn't have a type",
          },
          {
            name: 'chapter_1_ending',
            value: 3,
            endingId: 3,
            title: 'Nadia says Gavin is just a friend',
          },
          {
            name: 'chapter_1_ending',
            value: 4,
            endingId: 4,
            title: 'Nadia defends Gavin',
          },
        ],
        variables: [
          {
            name: 'nadia_gavinsharefood',
            description:
              'Gavin tries to use his non-halal chopsticks to grab her food.',
            values: [
              {
                value: 1,
                description: 'Nadia lets Gavin eat her food',
              },
              {
                value: 2,
                description: "Nadia doesn't let Gavin eat her food",
              },
              {
                value: 3,
                description: 'Nadia gets upset with Gavin',
              },
            ],
          },
          {
            name: 'nadia_trackpants_choice',
            description: "Chloe questions Nadia's choice of trackpants",
            values: [
              {
                value: 1,
                description: 'Nadia says she chose the trackpants',
              },
              {
                value: 2,
                description: 'Nadia blames her mother',
              },
              {
                value: 3,
                description: 'Nadia makes a joke',
              },
            ],
          },
          {
            name: 'nadia_liar',
            description: 'Nadia lies or tells the truth',
            values: [
              {
                value: 0,
                description: 'Nadia tells the truth when confronted',
              },
              {
                value: 1,
                description: 'Nadia lied to her father when confronted',
              },
              {
                value: 2,
                description: 'Nadia lied more than once',
              },
            ],
          },
        ],
      },
      {
        chapterId: 2,
        number: 2,
        reflectionId: 3,
        title: 'The Date Crasher',
        knotTag: 'nadia_2_intro',
        summary:
          "Nadia runs into some hard realities. Sometimes, having dreams isn't as straightforward as it should be.",
        playable: true,
        endings: [
          {
            name: 'chapter_2_ending',
            value: 1,
            endingId: 1,
            title: 'Azlin gets upset with you',
          },
          {
            name: 'chapter_2_ending',
            value: 2,
            endingId: 2,
            title: 'Azlin tells you to give him up',
          },
        ],
        variables: [
          {
            name: 'nadia_2_chloelibrarychoice',
            description: 'Nadia opens up to Chloe',
            values: [
              {
                value: 1,
                description: 'Nadia tells Chloe about Med School',
              },
              {
                value: 2,
                description: 'Nadia listens to Chloe only',
              },
              {
                value: 3,
                description: 'Nadia asks about Med School and Scholarships',
              },
            ],
          },
          {
            name: 'nadia_2_confidenthijab',
            description: 'Nadia feels self-confident in her hijab',
            values: [
              {
                value: 0,
                description: 'True',
              },
              {
                value: 1,
                description: 'False',
              },
            ],
          },
          {
            name: 'nadia_2_confrontchloe',
            description:
              'Nadia confronts Chloe about her perceptions of Muslim quotas',
            values: [
              {
                value: 0,
                description: 'True',
              },
              {
                value: 1,
                description: 'False',
              },
            ],
          },
          {
            name: 'nadia_2_hidewithgavin',
            description: 'Nadia chooses to go somewhere dark with Gavin',
            values: [
              {
                value: 0,
                description: 'True',
              },
              {
                value: 1,
                description: 'False',
              },
            ],
          },
          {
            name: 'nadia_2_huggavin',
            description: 'Nadia chooses to hug Gavin',
            values: [
              {
                value: 0,
                description: 'True',
              },
              {
                value: 1,
                description: 'False',
              },
            ],
          },
        ],
      },
      {
        chapterId: 3,
        number: 3,
        reflectionId: 4,
        title: 'Fork in the Road',
        knotTag: 'nadia_3_intro',
        summary:
          'As one door closes, another opens. But which girl will step through that door? As JC life comes to an end, only Nadia can choose.',
        playable: true,
        endings: [
          {
            endingId: 1,
            name: 'chapter_3_ending',
            value: 1,
            title: 'Nadia and Gavin, together',
            inkVar: 'chapter3_ending_1',
          },
          {
            endingId: 2,
            name: 'chapter_3_ending',
            value: 3,
            title: 'Nadia keeps her options open',
            inkVar: 'chapter3_ending_2',
          },
          {
            endingId: 3,
            name: 'chapter_3_ending',
            value: 3,
            title: 'Nadia moves forward alone',
            inkVar: 'chapter3_ending_3',
          },
        ],
        variables: [
          {
            name: 'nadia_3_gavinchoice',
            description: 'Nadia chooses whether to be with Gavin or not',
            values: [
              {
                value: 'no',
                description: 'No',
              },
              {
                value: 'maybe',
                description: 'Maybe',
              },
              {
                value: 'yes',
                description: 'Yes',
              },
            ],
          },
          {
            name: 'nadia_3_relationship',
            description: "The strength of Nadia's relationship with Gavin",
            values: [
              {
                value: 0,
                description: 'Nil',
              },
              {
                value: 1,
                description: 'Very low',
              },
              {
                value: 2,
                description: 'Low',
              },
              {
                value: 3,
                description: 'Medium',
              },
              {
                value: 4,
                description: 'Strong',
              },
            ],
          },
        ],
      },
    ],
    reflectionBrowser: [
      {
        title: 'Reflection Browser',
        knotTag: 'story_end_browser',
        summary:
          "Nadia's story in the game has ended, but the stories of all our players are waiting to be explored.",
        playable: true,
        images: [
          '/images/bg_nadia_intro.jpg',
          '/images/bg_launch.jpg',
          '/images/bg_reflections.jpg',
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
        ],
      },
    ],
  },
  {
    characterId: 2,
    name: 'Aman Singh',
    linkName: 'aman',
    profileImage: '/images/profile_aman.png',
    description:
      'National Service, family expectations, personal dreams, and faith - must Aman give up something he values in order to succeed?',
    characterIntroImage: '/character_choice_page/aman.png',
    jsonLink: '../stories/aman.ink.json',
    // jsonFile: AmanInk,
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
        reflectionId: 1,
        title: 'Call of Duty',
        knotTag: 'aman_1_intro',
        summary:
          'Aman enlists in National Service. It’s a proud moment for his family, but Aman is uneasy...',
        playable: true,
        images: [
          '/images/pixel.png',
          '/images/ui_aman_message.jpg',
          '/images/whatsapp.png',
          '/images/ico_aman_selinder.png',
          '/images/ico_aman_zhihao.png',
          '/images/ico_aman_family.png',
          '/images/ico_aman_extendedfamily.png',
          '/images/bg_aman_intro.jpg',
          '/images/bg_aman_bedroom.jpg',
          '/images/bg_aman_bmtparadesquare.jpg',
          '/images/bg_aman_bmtbunk.jpg',
          '/images/bg_aman_bmtbunknight.jpg',
          '/images/bg_aman_bmtcampoutside.jpg',
          '/images/bg_aman_bmtmirrorgrin.jpg',
          '/images/bg_aman_bmtmirrorsad.jpg',
          '/images/bg_aman_bmtpotianak.jpg',
          '/images/bg_aman_bmtmirrorgrin.jpg',
          '/images/cha_aman_sergeant_normal.png',
          '/images/bg_aman_bmtcookhouse.jpg',
          '/images/bg_aman_indianrestaurant.jpg',
          '/images/bg_aman_bmtbunk.jpg',
          '/images/bg_aman_bmttoilet.jpg',
          '/images/bg_aman_bmtcamp.jpg',
          '/images/bg_aman_ordturban.jpg',
          '/images/bg_launch.jpg',
          '/images/bg_reflections.jpg',
          '/images/cha_aman_jothi_normal.png',
          '/images/cha_aman_jothi_concerned.png',
          '/images/cha_aman_jothi_sad.png',
          '/images/cha_aman_jothi_diva.png',
          '/images/cha_aman_jothi_angry.png',
          '/images/cha_aman_lukman_normal.png',
          '/images/cha_aman_lukman_sad.png',
          '/images/cha_aman_lukman_hurt.png',
          '/images/cha_aman_lukman_curious.png',
          '/images/cha_aman_lukman_curious_shorts.png',
          '/images/cha_aman_lukman_determined_shorts.png',
          '/images/cha_aman_lukman_normal_shorts.png',
          '/images/cha_aman_lukman_sad_shorts.png',
          '/images/cha_aman_papa_normal.png',
          '/images/cha_aman_papa_stern.png',
          '/images/cha_aman_mama_happy.png',
          '/images/cha_aman_mama_concerned.png',
          '/images/cha_aman_bunkmate1_mocking.png',
          '/images/cha_aman_bunkmate2_afraid.png',
          '/images/cha_aman_bunkmate2_mocking.png',
          '/images/cha_aman_sergeant_irritated.png',
          '/images/cha_aman_sergeant_normal.png',
        ],
        endings: [
          {
            endingId: 1,
            name: 'chapter_1_ending',
            value: 1,
            title: 'Aman tells his family about his passion for acting',
            inkVar: 'chapter_1_ending_1',
          },
          {
            endingId: 2,
            name: 'chapter_1_ending',
            value: 2,
            title: 'Aman hides his passion for acting from his family',
            inkVar: 'chapter_1_ending_2',
          },
        ],
        variables: [
          {
            name: 'aman_1_familydinner',
            description: 'Aman tells his family about his acting',
            values: [
              {
                value: 'acting',
                description: 'Yes',
              },
              {
                value: 'something',
                description: 'No',
              },
            ],
          },
          {
            name: 'aman_1_nsgoals',
            description: "Aman's tells his mother his NS Goals",
            values: [
              {
                value: 'lie low',
                description: 'Lie low',
              },
              {
                value: 'do well',
                description: 'Do well',
              },
              {
                value: 'not sure',
                description: 'Not sure',
              },
            ],
          },
          {
            name: 'aman_1_nsworries',
            description: "Aman's tells his mother his NS fears",
            values: [
              {
                value: 'not doing well',
                description: 'Not doing well',
              },
              {
                value: 'only sikh',
                description: 'Being the only Sikh',
              },
            ],
          },
          {
            name: 'aman_1_selinderchat',
            description:
              'Aman discusses with Selinder whether he wants to go into Business',
            values: [
              {
                value: 'maybe',
                description: 'Maybe',
              },
              {
                value: 'maybe not',
                description: 'Maybe not',
              },
            ],
          },
          {
            name: 'aman_1_sharedreamslukman',
            description: 'Aman shares his dreams with Lukman',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
        ],
      },
      {
        chapterId: 2,
        number: 2,
        reflectionId: 5,
        title: 'Price of Admission',
        knotTag: 'aman_2_intro',
        summary:
          'Aman discovers talent is not enough to crack the silver screen. Where will he draw the line?',
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
            name: 'chapter_2_ending',
            value: 1,
            title: 'Aman did not get the role',
            inkVar: 'chapter_2_ending_1',
          },
          {
            endingId: 2,
            name: 'chapter_2_ending',
            value: 2,
            title: 'Aman got the role, but is ashamed',
            inkVar: 'chapter_2_ending_2',
          },
        ],
        variables: [
          {
            name: 'aman_2_actingaccuracy',
            description: 'Aman gets his lines correct',
            values: [
              {
                value: 0,
                description: 'None',
              },
              {
                value: 1,
                description: '1 line',
              },
              {
                value: 2,
                description: '2 lines',
              },
              {
                value: 3,
                description: 'Perfect',
              },
            ],
          },
          {
            name: 'aman_2_actingstyle',
            description: "Aman's style of portrayal for the casting character",
            values: [
              {
                value: 'intimidating',
                description: 'Intimidating',
              },
              {
                value: 'comical',
                description: 'Comical',
              },
            ],
          },
          {
            name: 'aman_2_funnyindian',
            description:
              "Aman's response to the agent's request to caricature Indians",
            values: [
              {
                value: 'not comfortable',
                description: 'Tell her you are not comfortable',
              },
              {
                value: 'not funny',
                description: 'Tell her it is not funny',
              },
              {
                value: 'nothing',
                description: 'Say nothing',
              },
            ],
          },
          {
            name: 'aman_2_selinderfocus',
            description:
              'Selinder asks what Aman is distracted by on his phone',
            values: [
              {
                value: 'casting',
                description: 'Casting Calls',
              },
              {
                value: 'us',
                description: "Nothing. Let's focus on us",
              },
            ],
          },
          {
            name: 'aman_2_selinderquestion',
            description: 'Selinder asks who is calling',
            values: [
              {
                value: 'wait',
                description:
                  'Aman asks her to wait for him to answer the casting agent',
              },
              {
                value: 'nothing',
                description: 'Aman wants to ignore the call',
              },
            ],
          },
        ],
      },
      {
        chapterId: 3,
        number: 3,
        reflectionId: 6,
        title: 'The Show Must Go On',
        knotTag: 'aman_3_intro',
        summary:
          'After a shocking argument, Aman must decide how his life’s script will unfold.',
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
            name: 'chapter_3_ending',
            value: 1,
            title: 'Aman chose consulting, but did not speak to his father',
            inkVar: 'chapter_3_ending_1',
          },
          {
            endingId: 2,
            name: 'chapter_3_ending',
            value: 2,
            title: 'Aman chose acting, but did not speak to his father',
            inkVar: 'chapter_3_ending_2',
          },
          {
            endingId: 3,
            name: 'chapter_3_ending',
            value: 3,
            title: 'Aman chose consulting, and spoke to his father',
            inkVar: 'chapter_3_ending_3',
          },
          {
            endingId: 4,
            name: 'chapter_3_ending',
            value: 4,
            title: 'Aman chose acting, and spoke to his father',
            inkVar: 'chapter_3_ending_4',
          },
        ],
        variables: [
          {
            name: 'aman_3_career',
            description: 'Aman chooses his career path',
            values: [
              {
                value: 'acting',
                description: 'Acting',
              },
              {
                value: 'consulting',
                description: 'Consulting',
              },
            ],
          },
          {
            name: 'aman_3_consulting',
            description: "Aman's chooses consulting (repeated)",
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'aman_3_lietoselparents',
            description: "Aman lies to Selinder's parents about jobs",
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'aman_3_paparegrets',
            description: 'Aman asks Papa about his regrets',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'aman_3_tickets',
            description: 'Aman decides who to give tickets for his play to',
            values: [
              {
                value: 1,
                description: 'Papa-ji and Lukman',
              },
              {
                value: 2,
                description: 'Papa-ji and Zhihao',
              },
              {
                value: 3,
                description: 'Lukman and Zhihao',
              },
            ],
          },
        ],
      },
    ],
    reflectionBrowser: [
      {
        title: 'Reflection Browser',
        knotTag: 'story_end_browser',
        summary:
          "Aman's story in the game has ended, but the stories of all our players are waiting to be explored.",
        playable: true,
        images: [
          '/images/bg_aman_intro.jpg',
          '/images/bg_launch.jpg',
          '/images/bg_reflections.jpg',
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
          },
        ],
      },
    ],
  },
  {
    characterId: 3,
    name: 'Ravi Kannasamy',
    linkName: 'ravi',
    profileImage: '/images/profile_ravi.png',
    characterIntroImage: '/character_choice_page/ravi.png',
    description:
      'Ravi dreams of being an aviation engineer - but can he push past the stereotypes and self-doubts?',
    jsonLink: '../stories/ravi.ink.json',
    // jsonFile: RaviInk,
    playable: true,
    primaryColour: '#8DC000',
    secondaryColour: '#FF8944',
    newestChapter: 1,
    chapters: [
      {
        chapterId: 1,
        number: 1,
        reflectionId: 7,
        title: 'Home Truths',
        knotTag: 'ravi_1_intro',
        summary:
          "Ravi's world is turned upside down, and he faces difficult choices in moving on.",
        playable: true,
        images: [
          '/images/bg_launch.jpg',
          '/images/bg_reflections.jpg',
          '/images/bg_ravi_pushpa_home.jpg',
          '/images/bg_ravi_home.jpg',
          '/images/cha_ravi_mum_normal.jpg',
          '/images/cha_ravi_mum_worried.jpg',
          '/images/cha_ravi_revati_normal.jpg',
          '/images/cha_ravi_revati_concerned.jpg',
        ],
        endings: [
          {
            endingId: 1,
            title: 'Ravi moves into the university dorm',
            inkVar: 'chapter_1_ending_1',
          },
          {
            endingId: 2,
            title: 'Ravi is still looking for a place to stay',
            inkVar: 'chapter_1_ending_2',
          },
        ],         
        variables: [
          {
            name: 'ravi_1_agent',
            description: 'Ravi reacts to the property agent',
            values: [
              {
                value: 'polite',
                description: 'Polite',
              },
              {
                value: 'angry',
                description: 'Angry',
              },
            ],
          },
          {
            name: 'ravi_1_dormhousing',
            description: "Ravi chooses dorm housing",
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_1_emailuniversity',
            description: "Ravi emails the university",
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_1_motherempathy',
            description: 'Ravi displays empathy for his mother',
            values: [
              {
                value: 0,
                description: 'nil',
              },
              {
                value: 1,
                description: '1/4',
              },
              {
                value: 2,
                description: '2/4',
              },
              {
                value: 3,
                description: '3/4',
              },
              {
                value: 4,
                description: '4/4',
              },
            ],
          },
          {
            name: 'ravi_1_notlikeotherindians',
            description: 'Ravi tells the property agent he is not like other indians',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_1_sharefrustrations',
            description: 'Ravi shares his frustrations with Revati',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
        ],
      },

      {
        chapterId: 2,
        number: 2,
        reflectionId: 8,
        title: 'Coffee Shop Kannasamy ',
        knotTag: 'ravi_2_intro',
        summary: 'Ravi finds a new gig at a cafe. And possibly something more.',
        playable: false,
        images: ['/images/bg_launch.jpg', '/images/bg_reflections.jpg'],
        endings: [
          {
            endingId: 1,
            title: 'Ravi calls Val',
          },
          {
            endingId: 2,
            title: 'Ravi does not call val',
          },
        ],
        variables: [
          {
            name: 'ravi_2_talktomarie',
            description: 'Ravi opens up to Marie ',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_2_modernart',
            description: "Ravi score in the Art game ",
            values: [
              {
                value: 0,
                description: 'nil',
              },
              {
                value: 1,
                description: '1/3',
              },
              {
                value: 2,
                description: '2/3',
              },
              {
                value: 3,
                description: '3/3',
              },
            ],
          },
        ],
      },
      {
        chapterId: 3,
        number: 3,
        reflectionId: 9,
        title: 'The Internship',
        knotTag: 'ravi_3_intro',
        summary:
          'Ravi lands an internship to fulfill his university credits. And finds himself in a situation that tests him.',
        playable: false,
        images: ['/images/bg_launch.jpg', '/images/bg_reflections.jpg'],
        endings: [
          {
            endingId: 1,
            title: 'Ravi resigns the internship',
          },
          {
            endingId: 2,
            title: 'Ravi asks for better workplace conditions',
          },
        ],
        variables: [
          {
            name: 'ravi_3_afraidtotellmum',
            description: 'Ravi is afraid to tell his mother about Val ',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_3_checktranslation',
            description: 'Ravi asks his boss about the Chinese instructions ',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_3_confrontcolleagues',
            description: 'Ravi confronts his colleagues on whatsapp',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_3_correctname',
            description: 'Ravi corrects Rogers pronunciation of his name ',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_3_tellvaltruth',
            description: 'Ravi reveals to Val why he is worried ',
            values: [
              {
                value: 0,
                description: 'False',
              },
              {
                value: 1,
                description: 'True',
              },
            ],
          },
          {
            name: 'ravi_3_internshipchoicetomum',
            description: 'Ravi tells his mother what he intends to do about his job ',
            values: [
              {
                value: "stay",
                description: 'Stay',
              },
              {
                value: "quit",
                description: 'Quit',
              },
            ],
          },
        ],
      },
      
    ],
  },
  {
    characterId: 4,
    name: 'Zhihao Lim',
    linkName: '',
    profileImage: '/images/profile_blank.png',
    characterIntroImage: '/images/instagram_blank.png',
    description:
      'Zhihao might have a future in e-sports, but will it disappear before his eyes? Life is about to get complicated, as a fateful Tweet gains a life of its own...',
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  },
  {
    characterId: 5,
    name: 'Marie da Costa',
    linkName: '',
    profileImage: '/images/profile_blank.png',
    characterIntroImage: '/images/instagram_blank.png',
    description:
      'Marie wants to open her own cafe - but will her heritage and gender stand in the way of her success?',
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  },
  {
    characterId: 6,
    name: 'Unaisah Begum',
    linkName: '',
    profileImage: '/images/profile_blank.png',
    characterIntroImage: '/images/instagram_blank.png',
    description:
      'Unaisah wants to excel as a new teacher - but can she break the glass ceiling while dealing with things at home?',
    jsonLink: '../stories/nadia.ink.json',
    playable: false,
  },
];
 

export default GLOBAL_VAR_MAP;


// NADIA
// chapter_id: 1
// character_id: 1
// nadia_liar: 0
// nadia_mood: 10
// nadia_trackpants_choice: 1
// nadia_gavinsharefood: 1
// gavin_mood: 10
// chapter_1_ending: 1
// nadia_2_chloelibrarychoice: 1
// nadia_2_confidenthijab: 1
// nadia_2_confrontchloe: 0
// nadia_2_hidewithgavin: 1
// nadia_2_huggavin: 1
// chapter_2_ending: 1
// nadia_3_gavinchoice: "no"
// nadia_3_relationship: 1
// chapter_3_ending: 1
// story_finished: 1

// AMAN
// aman_1_familydinner: ""
// aman_1_nsgoals: "do well"
// aman_1_nsworries: "only sikh"
// aman_1_selinderchat: "maybe not"
// aman_1_sharedreamslukman: 1
// aman_2_actingaccuracy: 2
// aman_2_actingstyle: "comical"
// aman_2_funnyindian: "nothing"
// aman_2_selinderfocus: "casting"
// aman_2_selinderquestion: "nothing"
// aman_3_career: "acting"
// aman_3_consulting: 0
// aman_3_lietoselparents: 1
// aman_3_paparegrets: 0
// aman_3_tickets: 2
// aman_mood: 10
// chapter_1_ending: 1
// chapter_2_ending: 2
// chapter_3_ending: 2
// chapter_id: 1
// character_id: 2
// story_finished: 1

// RAVI
// chapter_1_ending: 2
// chapter_2_ending: 1
// chapter_3_ending: 1
// chapter_id: 3
// character_id: 3
// ravi_1_agent: "polite"
// ravi_1_dormhousing: 0
// ravi_1_emailuniversity: 1
// ravi_1_motherempathy: 4
// ravi_1_notlikeotherindians: 1
// ravi_1_sharefrustrations: 0
// ravi_2_modernart: 3
// ravi_3_afraidtotellmum: 0
// ravi_3_checktranslation: 1
// ravi_3_confrontcolleagues: 0
// ravi_3_correctname: 1
// ravi_3_internshipchoicetomum: "stay"
// ravi_3_tellvaltruth: 0
// story_finished: 1