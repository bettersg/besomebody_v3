export const MINI_GAME_MAP = [
  // aman 1
    {
      game_id: 1,
      ui: "mcq",
      introduction: "Aman mentioned the five Ks of Sikhism - Let's find out more.",
      questions: [
        {
          question_id: 1,
          question:
            "Sikh men usually have the same last name: Singh",
          type: "text",
          correct_answer_id: 1,
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
          correct_answer_id: 3,
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
            "In Singapore, are Sikhs allowed to wear the Kirpan in public (a religious dagger)?",
          type: "text",
          correct_answer_id: 2,
          explanation:
            "Singaporean law has made allowances to ensure Sikhs can carry the kirpan in public (under some specific conditions), since 2012. ",
          answers: [
            {
              answer_id: 1,
              title: "Yes, without constraint.",
            },
            {
              answer_id: 2,
              title: "Yes, under certain specific conditions",
            },
            {
              answer_id: 3,
              title: "No, it is an illegal weapon",
            },
            {
              answer_id: 4,
              title:
                "No, so they carry an image of it instead",
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
          correct_answer_id: 2,
          explanation:
            "While an overwhelming majority of Malays in Singapore are followers of Islam, there is a small minority of Malays that follow other faiths.Similarly, a majority of Muslims in Singapore are of Malay ethnicity - but followers of Islam, in general, come from diverse ethnics backgrounds - and this is the case in Singapore as well!",
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
          correct_answer_id: 2,
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
          correct_answer_id: 3,
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
        correct_answer_id: 1,
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
        correct_answer_id: 2,
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
            title: "No, they can eat from halal-certified eateries /  sources that are Muslim-owned.",
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
        correct_answer_id: 3,
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
  },
  //  nadia chapt 3
  {
    game_id: 4, 
    ui: "mcq",
    introduction: "Interfaith relationships are a difficult and sensitive topic. Let's find out more.",
    questions: [
      {
        question_id: 1,
        question: "What % of marriages in Singapore in 2020 were inter-ethnic?",
        type: "text",
        explanation:
          "About 1 in 5 marriages is between a bride and groom of different ethnicities in Singapore!",
          //https://www.statista.com/statistics/995734/singapore-proportion-inter-ethnic-marriages/
        correct_answer_id: 2,
        answers: [
          {
            answer_id: 1,
            title: "8%",
          },
          {
            answer_id: 2, 
            title: "18%",
          },
          {
            answer_id: 3,
            title: "28%",
          },
          {
            answer_id: 4,
            title: "38%",
          },
        ],
      },
      {
        question_id: 2,
        question: "How many Malay Muslim females married Chinese males in 2020?",
        correct_answer_id: 2,
        explanation:
          "Exactly 103 Malay Muslim females married Chinese males in 2020. This number is slightly lower than previous years (131 in 2018) due to the overall reduction in marriages due to the COVID-19 restrictions.",
        // https://data.gov.sg/dataset/inter-ethnic-marriages-under-administration-muslim-law-act-ethnic-group-brides-grooms-annual?view_id=138f28fd-7668-4611-a773-8350fe95c5a5&resource_id=9c8d2f0f-af24-402d-83be-a14bdf5e201f
        type: "text",
        answers: [
          {
            answer_id: 1,
            title: "10",
          },
          {
            answer_id: 2, 
            title: "100",
          },
          {
            answer_id: 3,
            title: "1,000",
          },
          {
            answer_id: 4,
            title: "10,000",
          },
        ],
      },
      {
        question_id: 3,
        question: "Mdm Che Zahara, a Malay Muslim pioneer of Singapore who helped establish the Singapore Women's Charter in Parliament in 1961, was married to a non-Malay.",
        correct_answer_id: 1,
        explanation: "Born in Singapore, Che Zahara was the daughter of Noor Mohamed, one of the first Malays during British rule to learn English and work as a mediator and translator. Che Zahara married a businessman from Ceylon, now Sri Lanka. She was inducted to the Singapore Women's Hall of Fame.",
        // https://www.swhf.sg/profiles/che-zahara-binte-noor-mohamed/
        type: "text",
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
    ],
  },

  // aman 2
  {
    game_id: 5,
    ui: "mcq",
    introduction: "Aman faced hurdles on his journey to become an actor. Let's explore these.",
    questions: [
      {
        question_id: 1,
        question:
          "Singapore already has a famous Sikh actor: Gurmit Singh.",
        type: "text",
        correct_answer_id: 2,
        explanation:
          "False. Gurmit Singh converted from Sikhism to Christianity before he started acting professionally (when he was about 20). He retained his surname of Singh, which often leads people to mistakenly believe that he is still a Sikh.",
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
          "A 2018 national survey found that Chinese employers were more likely than Malay and Indian employers to feel that a person’s race is a relevant factor when hiring.",
        correct_answer_id: 1,
        explanation: "Based on the 2018 IPS Survey, 34% of Chinese respondents felt that a job applicant's race was sometimes important when hiring someone to work for them (compared to only 21% of Malays and 16% of Indians).",
        type: "text",
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
        question_id: 3,
        question:
          "A local Indian actor was asked to be 'more Indian' in his casting for Ah Boys To Men 4, which created significant controversy in 2017.",
        type: "text",
        correct_answer_id: 1,
        explanation:
          "Shrey Bhargava, a freelance actor, shared his experience during the casting for Ah Boys To Men 4. There was heated discussion online - some felt that he over-reacted, while others defended his remarks.",
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
    ],
  },

  // aman 3
  {
    game_id: 6,
    ui: "mcq",
    introduction: "Aman met Sel at a Gurdwara. Let's explore what this means to Sikhs.",
    questions: [
      {
        question_id: 1,
        question:
          "A Gurdwara is a Sikh temple.",
        type: "text",
        correct_answer_id: 1,
        explanation:
          "True. The first Gurdwara in Singapore was established in 1912 and is called the Central Sikh Temple, or Wadda Gurdwara ('The Big Temple')",
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
          "Which one of these is most likely a Gurdwara?",
        correct_answer_id: 3,
        explanation: "It's option 3. A gurdwara can be identified from a distance by tall flagpoles bearing the orange & black Sikh flag, the Nishan Sahib (a logo with three swords and a special throwing weapon).",
        type: "image",
        answers: [
          {
            answer_id: 1,
            imageUrl: "aman_3_temple.jpg",
            title: "Option 1",
          },
          {
            answer_id: 2,
            imageUrl: "aman_3_mosque.jpg",
            title: "Option 2",
          },
          {
            answer_id: 3,
            imageUrl: "aman_3_gurdwara.jpg",
            title: "Option 3",
          },
          {
            answer_id: 4,
            imageUrl: "aman_3_church.jpg",
            title: "Option 4",
          },
        ],
      },
      {
        question_id: 3,
        question:
          "Any visitor and devotee to a Gurdwara will be served food, as part of Sikh practice.",
        type: "text",
        correct_answer_id: 1,
        explanation:
          "True. Langgar (originally meaning anchor) was instituted by Guru Nanak, to cater food for visitors and devotees who came to meet the Guru. This now includes community service and assistance to the needy, in addition to its original purpose of food distribution, funded by donations from the Sikh community.",
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
    ],
  },

// ravi 1
  {
  game_id: 7,
  ui: "mcq",
  introduction: "Ravi is struggling with housing issues. Many Singaporeans face similiar struggles daily.",
  questions: [
    {
      question_id: 1,
      question:
        "Approximately how many homeless people are there in Singapore?",
      type: "text",
      correct_answer_id: 2,
      explanation:
        "According to a 2019 study by Dr Ng Kok Hoe of the Lee Kuan Yew School of Public Policy, around 1,000 people sleep on the streets every night. If you find a homeless person who needs help, please call the ComCare hotline at 1800-222-0000.",
      answers: [
        {
          answer_id: 1,
          title: "100",
        },
        {
          answer_id: 2,
          title: "1,000",
        },
        {
          answer_id: 3,
          title: "10,000",
        },
        {
          answer_id: 4,
          title: "100,000",
        },
      ],
    },
    {
      question_id: 2,
      question:
        "A Chinese, Malay, and Indian buy a nearly identical HDB flat. Statistically, who is able to resell their HDB at the highest price and make more profit?",
      correct_answer_id: 1,
      explanation: "The Ethnic Integration Policy limits the total percentage of a block or neighbourhood that may be occupied by a certain ethnicity, which means minority owners can only resell their property to minority buyers. In a 2013 study by Maisy Wong, she found that Chinese-constrained HDB resale units (only Chinese buyers eligible) were 5-8% more expensive than almost identical Indian or Malay-constrained properties.",
      type: "text",
      answers: [
        {
          answer_id: 1,
          title: "Chinese",
        },
        {
          answer_id: 2,
          title: "Malay",
        },
        {
          answer_id: 3,
          title: "Indian",
        },
        {
          answer_id: 2,
          title: "None (all are equal)",
        },
      ],
    },
    {
      question_id: 3,
      question:
        "Individuals of different races all have an equal and fair chance of renting out a house in Singapore's open market.",
      type: "text",
      correct_answer_id: 2,
      explanation:
        "False. A 2017 CNBC article highlighted that even in a weak rental market, some landlords explicitly deny rental opportunities to some races. Singaporean Malays, Singaporean Indians & PRCs are amongst those who face the issue of rental discrimination.",
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
  ],
  },


// ravi 2
  {
    game_id: 8,
    ui: "mcq",
    introduction: "Ravi took up a part time job to pay the bills. What is it like for Singaporeans in this situation?",
    questions: [
      {
        question_id: 1,
        question:
          "What is the average monthly household income for Singaporeans who live in 1 or 2-bedroom HDBs? [2020 data]",
        type: "text",
        correct_answer_id: 2,
        explanation:
          "The average monthly household income (i.e. the combined salary of all the people who live there) for Singaporeans who live in 1 or 2-bedroom HDBs is $2,997. [Department of Statistics Key Household Income Trends, 2020]",
        answers: [
          {
            answer_id: 1,
            title: "$1,504",
          },
          {
            answer_id: 2,
            title: "$2,997",
          },
          {
            answer_id: 3,
            title: "$10,127",
          },
          {
            answer_id: 4,
            title: "$14,254",
          },
        ],
      },
      {
        question_id: 2,
        question:
          "What is the average monthly household income for Singaporeans who live in landed properties? [2020 data]",
        correct_answer_id: 4,
        explanation: "The average monthly household income (i.e. the combined salary of all the people who live there) for Singaporeans who live in landed properties is $27,838. [Department of Statistics Key Household Income Trends, 2020]",
        type: "text",
        answers: [
          {
            answer_id: 1,
            title: "$10,127",
          },
          {
            answer_id: 2,
            title: "$15,023",
          },
          {
            answer_id: 3,
            title: "$21,732",
          },
          {
            answer_id: 4,
            title: "$27,838",
          },
        ],
      },
      {
        question_id: 3,
        question:
          "What is the unemployment rate for Singaporean citizens? [2021 data]",
        type: "text",
        correct_answer_id: 2,
        explanation:
          "The unemployment rate for citizens in 2021 was 3.7% [Ministry of Manpower]. The unemployment rate for United States was 8.1% [World Bank], for comparison.",
          answers: [
            {
              answer_id: 1,
              title: "1.7%",
            },
            {
              answer_id: 2,
              title: "3.7%",
            },
            {
              answer_id: 3,
              title: "5.7%",
            },
            {
              answer_id: 4,
              title: "7.7%",
            },
          ],
      },  
    ],
  },
  
  // ravi 3
  {
    game_id: 9,
    ui: "mcq",
    introduction: "Ravi is experiencing some workplace discrimination. Let's understand this issue further.",
    questions: [
      {
        question_id: 1,
        question:
          "What percentage of each race experienced discrimination when it came to applying for a job in Singapore? [2018 Survey]",
        type: "text",
        correct_answer_id: 4,
        explanation:
          "Based on the 2018 IPS Survey, 73 per cent of Malays, 68 per cent of Indians and about 50% of Others (which includes Eurasians) - felt that they had experienced discrimination when it came to applying for a job. In contrast, 38 per cent of Chinese respondents felt that way.",
        answers: [
          {
            answer_id: 1,
            title: "10% of Chinese, 85% of Malays, 50% of Indians",
          },
          {
            answer_id: 2,
            title: "10% of Chinese, 85% of Malays, 38% of Indians",
          },
          {
            answer_id: 3,
            title: "38% of Chinese, 38% of Malays, 85% Indians",
          },
          {
            answer_id: 4,
            title: "38% of Chinese, 73% of Malays, 68% of Indians",
          },
        ],
      },
      {
        question_id: 2,
        question:
          "PM Lee announced in 2021 that, as there is currently no law prohibiting racial discrimination in the workplace, a new one would be introduced.",
        correct_answer_id: 1,
        explanation: "PM Lee said in his 2021 National Day Rally: Philosophically, writing the Tripartite Alliance for Fair Employment Practice guidelines into the law is a major move. It signals that we do not tolerate discrimination at workplaces.",
        type: "text",
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
        question_id: 3,
        question:
          "Based on complaints to the Tripartite Alliance for Fair and Progressive Employment Practices (Tafep), most companies discriminated on the basis of:  ",
        type: "text",
        correct_answer_id: 1,
        explanation:
          "MOM provided a breakdown of the discrimination complaints in 2021: 233 were based on nationality, 69 based on age, 49 on gender, and 13 on family responsibilities.",
          answers: [
            {
              answer_id: 1,
              title: "Nationality",
            },
            {
              answer_id: 2,
              title: "Gender",
            },  
            {
              answer_id: 3,
              title: "Age",
            },   
            {
              answer_id: 3,
              title: "Pregnancy",
            },   
          ],
      },  
    ],
  },

// zhihao 1
  {
  game_id: 11,
  ui: "mcq",
  introduction: "Zhihao's family conversations touched on some important cultural issues. Let's explore them further.",
  questions: [
    {
      question_id: 1,
      question:
        "Zhihao's family speaks Chinese dialect. What percentage of all local households speak a Chinese dialect at home?",
      type: "text",
      correct_answer_id: 1,
      explanation:
        "In 2020, only 8.7% of all households speak dialects at home (reduction from 2010, which was 14.3%). 48.3% speak English, 29.9% speak Mandarin, 9.2% speak Malay, and 2.5% speak Tamil at home.  [2020 Census]",
      answers: [
        {
          answer_id: 1,
          title: "8.7%",
        },
        {
          answer_id: 2,
          title: "12.5%",
        },
        {
          answer_id: 3,
          title: "14.3%",
        },
        {
          answer_id: 4,
          title: "20.1%",
        },
      ],
    },
    {
      question_id: 2,
      question:
        "After Zhihao's father passed, the family observed a period of mourning and did not attend events. Which of these customs is not associated with Chinese (non-Christian) funerals?",
      correct_answer_id: 4,
      explanation: "Immediate cremation is normally associated with Hindu funerals, as Hindus believe the physical body has no sacred purpose and cremation helps reincarnation. For Chinese funerals, the deceased may be buried or cremated, usually after a multi-day wake is held.",
      type: "text",
      answers: [
        {
          answer_id: 1,
          title: "Wearing a small cloth patch on your shoulder",
        },
        {
          answer_id: 2,
          title: "Disposing of a red string after attending the wake",
        },
        {
          answer_id: 3,
          title: "Burning paper models of possessions for the loved one",
        },
        {
          answer_id: 4,
          title: "Immediate cremation of the body",
        },
      ],
    },
    {
      question_id: 3,
      question:
        "Older Chinese Singaporeans protested heavily against the removal of Chinese-medium schools (like the original Chinese High and Nantah University), and felt such actions reflected a lack of their 'Chinese Privilege'.",
      type: "text",
      correct_answer_id: 1,
      explanation:
        "In a 2021 speech by Min Lawrence Wong, he explained that older local Chinese feel like the modern term 'Chinese Privilege' does not reflect their lived experience, because of the 'Nantah episode' and the emphasis on English over Chinese language (and the removal of dialects) put them at a distinct disadvantage, despite being an ethnic majority.",
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
  ],
  },
  // unaisah 1
  {
    game_id: 14,
    ui: "mcq",
    introduction: "Unaisah MCQ1. Let's explore them further.",
    questions: [
      {
        question_id: 1,
        question:
          "What percentage of workers in Singapore reported being victims of sexual harassment in Singapore?",
        type: "text",
        correct_answer_id: 1,
        explanation:
          "2 in 5 workers said they had been victims of unwanted sexual advances, in the form of crude remarks, sexual pictures or texts, or remarks about their appearance or sexual activities. [Straits Times, Jan 2021]",
        answers: [
          {
            answer_id: 1,
            title: "20%",
          },
          {
            answer_id: 2,
            title: "30%",
          },
          {
            answer_id: 3,
            title: "40%",
          },
          {
            answer_id: 4,
            title: "50%",
          },
        ],
      },
      {
        question_id: 2,
        question:
          "What percentage of workers reported being touched in an unwelcome way?",
        correct_answer_id: 4,
        explanation: "13% reported being touched at work, or more than one in every ten workers. This included male respondees.",
        type: "text",
        answers: [
          {
            answer_id: 1,
            title: "3%",
          },
          {
            answer_id: 2,
            title: "8%",
          },
          {
            answer_id: 3,
            title: "13%",
          },
          {
            answer_id: 4,
            title: "21%",
          },
        ],
      },
      {
        question_id: 3,
        question:
          "Of all the reported victims of harassment, how many of them filed official complaints with the authorities (at work, or the police)?",
        type: "text",
        correct_answer_id: 1,
        explanation:
          "Only 1 in 3 filed an official report.Those who did not said they wanted to forget the unpleasant experience or felt what they had experienced was not serious enough. Some also felt they had no evidence of the wrong-doing. ",
          answers: [
            {
              answer_id: 1,
              title: "25%",
            },
            {
              answer_id: 2,
              title: "33%",
            },
            {
              answer_id: 3,
              title: "50%",
            },
            {
              answer_id: 4,
              title: "75%",
            },
          ],
      },  
    ],
    },
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
  