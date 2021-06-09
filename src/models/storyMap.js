import NadidInk from '../stories/nadid.ink.json'
import AmanInk from '../stories/aman_chapter1.ink.json'

// TODO: Update with other properties such as character image, character bio, chapter summary, etc
export const STORY_MAP = [
  {
    id: 1,
    name: 'Nadia',
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


// code below on personas is a hack job, just to work with the characterchoice page. need to update it.

export const PLAYABLE_CHARACTERS = [

  {
    alt: "Nadid",
    src:
      "https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
    name: "Nadid",
    description: "Nadid Rahim wants to become a doctor - but will love and religion get in the way?",
    buttonShow: true,
    link: "/chapters/Nadid"
  },
  {
    alt: "Aman",
    src:
      "https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F67b34f4b3f8c45abaca6389b1e8e0d53",
    name: "Aman",
    description: "Aman Singh dreams of writing poetry - but he has bigger headaches to deal with first.",
    buttonShow: true,
    link: "/story/aman"
  }
];
      
export const NONPLAYABLE_CHARACTERS = [
			{
				alt: "Nazeema",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
				name: "Nazeema",
				description: "Traits Background Story Teaser",
				buttonShow: false
			},
			{
				alt: "Zhi Hao",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F67b34f4b3f8c45abaca6389b1e8e0d53",
				name: "Zhi Hao",
				description: "Traits Background Story Teaser",
				buttonShow: false
			},
			{
				alt: "Sally",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F2b85e086dd6e4e9f8cee78e60a8b2f0e",
				name: "Sally",
				description: "Traits Background Story Teaser",
				buttonShow: false
			}
		]
	