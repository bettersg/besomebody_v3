export const MINI_GAME_MAP = [
    {
      game_id: 1,
      ui: "mcq",
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
          type: "image",
          answers: [
            {
              answer_id: 5,
              imageUrl: "stan.jpeg",
              title: "Male Sikhs below the age of 12",
            },
            {
              answer_id: 6,
              imageUrl: "malcolm.jpg",
              title: "Female Sikhs after puberty",
            },
            {
              answer_id: 7,
              imageUrl: "robert.jpg",
              title: "No Sikhs are allowed",
            },
            {
              answer_id: 8,
              imageUrl: "bilius.jpg",
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
              answer_id: 9,
              title: "Yes, without constraint.",
            },
            {
              answer_id: 10,
              title: "Yes, under certain conditions",
            },
            {
              answer_id: 11,
              title: "No, it is an illegal weapon",
            },
            {
              answer_id: 12,
              title:
                "No, they carry an image of it instead",
            },
          ],
        },  
      ],
    },
  
    {
      game_id: 2,
      ui: "swipe",
      questions: [
        {
          question_id: 6,
          question: "Muslims cannot touch dogs",
          type: "text",
          explanation:
            "Traditionally, dogs are considered haram, or forbidden, in Islam as they are thought of as dirty. But while advocate complete avoidance, others simply say Muslims should not touch the animal’s mucous membranes — such as the nose or mouth — which are considered especially impure. Even if that happens, there is a special cleansing ritual that can be followed.",
          correctAnswer: "FALSE",
          answers: [
            {
              answer_id: 20,
              title: "TRUE",
            },
            {
              answer_id: 21,
              title: "FALSE",
            },
          ],
        },
        {
          question_id: 7,
          question: "Muslims have to wash themselves before they pray",
          correctAnswer: "TRUE",
          explanation:
            "Muslims are expected to perform a purification ritual called Wudu, requiring that they wash their faces, hands, arms, and feet before prayer.",
          type: "text",
          answers: [
            {
              answer_id: 22,
              title: "TRUE",
            },
            {
              answer_id: 23,
              title: "FALSE",
            },
          ],
        },
        {
          question_id: 8,
          question: "In Singapore, all Muslims are Malay",
          correctAnswer: "TRUE",
          explanation:
            "In Singapore, Indian Muslims form the largest ethnic minority within the otherwise largely Malay Muslim community. There are also Chinese Muslims who have found Islam, and those who have converted to Islam after marriage.",
          type: "text",
          answers: [
            {
              answer_id: 24,
              title: "TRUE",
            },
            {
              answer_id: 25,
              title: "FALSE",
            },
          ],
        },
      ],
  },
  {
    game_id: 3,
    ui: "swipe",
    questions: [
      {
        question_id: 7,
        question: "Sikh men usually have the same last name: Singh",
        type: "text",
        explanation:
          "Guru Gobind Singh wanted to create an egalitarian society, and in South Asia, different last names often had socioeconomic and caste-associations. The word Singh means Lion and the word Kaur denotes royalty – a sovereign princess.",
        correctAnswer: "true",
        answers: [
          {
            answer_id: 20,
            title: "TRUE",
          },
          {
            answer_id: 21,
            title: "FALSE",
          },
        ],
      },
      {
        question_id: 8,
        question: "Sikh women who have been initiated (baptised) are allowed to shave",
        correctAnswer: "FALSE",
        explanation:
          "Initiated Sikhs are not supposed to cut hair from any part of their body",
        type: "text",
        answers: [
          {
            answer_id: 22,
            title: "TRUE",
          },
          {
            answer_id: 23,
            title: "FALSE",
          },
        ],
      },
      {
        question_id: 9,
        question: "In Singapore, Sikhs are not allowed to wear the Kirpan (a religious dagger).",
        correctAnswer: "FALSE",
        explanation:
          "Singaporean law has made allowances to ensure Sikhs can carry the kirpan in public (under some specific conditions), since 2012.",
        type: "text",
        answers: [
          {
            answer_id: 24,
            title: "TRUE",
          },
          {
            answer_id: 25,
            title: "FALSE",
          },
        ],
      },
    ],
  },
  ];
  