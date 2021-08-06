export const MINI_GAME_MAP = [
    {
      game_id: 1,
      ui: "mcq",
      introduction: "Why did Jothi respond this way? Let's find out more.",
      questions: [
        {
          question_id: 1,
          question:
            "Sikh men usually have the same last name: Singh",
          type: "text",
          correctAnswer:
            "True",
          explanation:
            "Guru Gobind Singh wanted to create an egalitarian society, and in South Asia, different last names often had socioeconomic and caste-associations. The word Singh means Lion and the word Kaur denotes royalty – a sovereign princess.",
          answers: [
            {
              answer_id: 1,
              title: "True",
            },
            {
              answer_id: 2,
              title: "False",
            },
          ],
        },
        {
          question_id: 2,
          question:
            "Which types of baptised (initiated) Sikhs are allowed to shave their body hair?",
          correctAnswer: "No Sikhs are allowed",
          explanation: "Initiated Sikhs (male or female) are not supposed to cut hair from any part of their body",
          type: "text",
          answers: [
            {
              answer_id: 1,              
              title: "Male Sikhs below the age of 12",
            },
            {
              answer_id: 2,
              title: "Female Sikhs after puberty",
            },
            {
              answer_id: 3,
              title: "No Sikhs are allowed",
            },
            {
              answer_id: 4,
              title: "All Sikhs are allowed",
            },
          ],
        },
        {
          question_id: 3,
          question:
            "In Singapore, are Sikhs allowed to wear the Kirpan (a religious dagger)?",
          type: "text",
          correctAnswer:
          "Yes, under certain conditions",
          explanation:
            "Singaporean law has made allowances to ensure Sikhs can carry the kirpan in public (under some specific conditions), since 2012. ",
          answers: [
            {
              answer_id: 1,
              title: "Yes, without constraint.",
            },
            {
              answer_id: 2,
              title: "Yes, under certain conditions",
            },
            {
              answer_id: 3,
              title: "No, it is an illegal weapon",
            },
            {
              answer_id: 4,
              title:
                "No, they carry an image of it instead",
            },
          ],
        },  
      ],
    },
  
    {
      game_id: 2,
      ui: "mcq",
      introduction: "Why did Nadia and Chloe have that chat? Let's find out more.",
      questions: [
        {
          question_id: 1,
          question: "All Malays in Singapore are Muslim.",
          type: "text",
          explanation:
            "While an overwhelming majority of Malays in Singapore are followers of Islam, there is a small minority of Malays that follow other faiths.Similarly, a majority of Muslims in Singapore are of Malay ethnicity - but followers of Islam, in general, come from diverse ethnics backgrounds - and this is the case in Singapore as well!",
          correctAnswer: "FALSE",
          answers: [
            {
              answer_id: 1,
              title: "TRUE",
            },
            {
              answer_id: 2,
              title: "FALSE",
            },
          ],
        },
        {
          question_id: 2,
          question: "Is it permissible for Muslim females to hug unrelated men?",
          correctAnswer: "No",
          explanation:
            "For Muslims, hugging (touching in general) members of the opposite sex when not related, is not permissible for Muslims according to strict interpretations of the Hadith scriptures in Islam. There are varying interpretations, and not all Muslims follow this. There are also special exceptions to this guideline.",
          type: "text",
          answers: [
            {
              answer_id: 1,
              title: "Yes",
            },
            {
              answer_id: 2,
              title: "No",
            },
          ],
        },
        {
          question_id: 3,
          question:
            "Which of the images below correctly shows a woman in a tudung?",
          correctAnswer: "Option 3",
          explanation: "The images above include a Burka (blue), a Niqab (black), and a Khimar (dark green). The Hijab (light green image) is principle of modesty in Islam, extending to clothing and behaviour for both men and women, and usually refers to the head covering Muslim women wear. A Tudung is a Malay word for head-covering.",
          type: "image",
          answers: [
            {
              answer_id: 1,
              imageUrl: "burka.png",
              title: "Option 1",
            },
            {
              answer_id: 2,
              imageUrl: "niqab.png",
              title: "Option 2",
            },
            {
              answer_id: 3,
              imageUrl: "hijab.png",
              title: "Option 3",
            },
            {
              answer_id: 4,
              imageUrl: "khimar.png",
              title: "Option 4",
            },
          ],
        },
      ],
  },
    // nadia chapt 2
  {
    game_id: 3, 
    ui: "mcq",
    introduction: "Nadia and Gavin have touched on some pretty deep cultural issues. Let's find out more.",
    questions: [
      {
        question_id: 1,
        question: "Can non-Muslims do the 'Salam' (greeting)?",
        type: "text",
        explanation:
          "Yes, non-Muslims may exchange Salam or shake hands with Muslims. The handshake is a palm-to-palm touch with the right hand or with both hands (never the left), the palms are then brought to the heart as a gesture of sincerity. A handshake is only initiated between individuals of the same gender. A Muslim woman does not shake a man’s hand unless he is a a family member or a religious teacher.",
        correctAnswer: "YES",
        answers: [
          {
            answer_id: 1,
            title: "YES",
          },
          {
            answer_id: 2,
            title: "NO",
          },
        ],
      },
      {
        question_id: 2,
        question: "Can Muslims only eat from halal-certified eateries?",
        correctAnswer: "No, they can eat from halal-certified eateries or from sources that are Muslim-owned.",
        explanation:
          "Some small businesses owned by Muslims (e.g. home-based businesses) are not halal-certified, but will follow Muslim practices and therefore Muslims can eat from them too.",
        type: "text",
        answers: [
          {
            answer_id: 1,
            title: "Yes, They can only eat food from halal-certified eateries. ",
          },
          {
            answer_id: 2,
            title: "No, they can eat from halal-certified eateries or from sources that are Muslim-owned.",
          },
          {
            answer_id: 3,
            title: "- No, they can eat from any sources so long it has no pork or no lard.",
          },
        ],
      },
      {
        question_id: 3,
        question:
          "Which of the following meat dishes is NOT halal?",
        correctAnswer: "Frog",
        explanation: "Frog meat is considered as haram (non-halal) by most Islamic scholars, because such ‘water creatures’ are considered unclean (along with alligators and turtles). Halal (lawful) food are items prepared under strict Muslim dietary laws, and animals, like chicken, sheep, cattle, must be slaughtered by Muslims because a short prayer is said when they are being slaughtered.",
        type: "text",
        answers: [
          {
            answer_id: 1,            
            title: "Beef",
          },
          {
            answer_id: 2,
            title: "Camel",
          },
          {
            answer_id: 3,
            title: "Frog",
          },
          {
            answer_id: 4,
            title: "Veal",
          },
        ],
      },
    ],
  }
];
  



  // {
  //   game_id: 3,
  //   ui: "swipe",
  //   questions: [
  //     {
  //       question_id: 7,
  //       question: "Sikh men usually have the same last name: Singh",
  //       type: "text",
  //       explanation:
  //         "Guru Gobind Singh wanted to create an egalitarian society, and in South Asia, different last names often had socioeconomic and caste-associations. The word Singh means Lion and the word Kaur denotes royalty – a sovereign princess.",
  //       correctAnswer: "true",
  //       answers: [
  //         {
  //           answer_id: 20,
  //           title: "TRUE",
  //         },
  //         {
  //           answer_id: 21,
  //           title: "FALSE",
  //         },
  //       ],
  //     },
  //     {
  //       question_id: 8,
  //       question: "Sikh women who have been initiated (baptised) are allowed to shave",
  //       correctAnswer: "FALSE",
  //       explanation:
  //         "Initiated Sikhs are not supposed to cut hair from any part of their body",
  //       type: "text",
  //       answers: [
  //         {
  //           answer_id: 22,
  //           title: "TRUE",
  //         },
  //         {
  //           answer_id: 23,
  //           title: "FALSE",
  //         },
  //       ],
  //     },
  //     {
  //       question_id: 9,
  //       question: "In Singapore, Sikhs are not allowed to wear the Kirpan (a religious dagger).",
  //       correctAnswer: "FALSE",
  //       explanation:
  //         "Singaporean law has made allowances to ensure Sikhs can carry the kirpan in public (under some specific conditions), since 2012.",
  //       type: "text",
  //       answers: [
  //         {
  //           answer_id: 24,
  //           title: "TRUE",
  //         },
  //         {
  //           answer_id: 25,
  //           title: "FALSE",
  //         },
  //       ],
  //     },
  //   ],
  // },
  