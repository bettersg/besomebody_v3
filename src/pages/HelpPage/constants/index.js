export const HELP_ICONS = [
  {
    name: "Playing the game",
    icon: "/help_page/arrow.svg",
  },
  {
    name: "Account and Profile",
    icon: "/help_page/profile.svg",
  },
  {
    name: "Report a bug",
    icon: "/help_page/bug.svg",
  },
  {
    name: "About Us",
    icon: "/help_page/about.svg",
  },
];

export const HELP_DETAILS = [
  {
    category: "Playing the Game",
    questions: [
      {
        question:
          "I want to play as the other characters! How do I access them?",
        answer: (
          <div>
            After creating a new account or logging in, all users are
            automatically directed to the “Character Menu”, and all available
            characters are accessible from there.
            <br />
            <br />
            If you are in the middle of a game, click the menu icon on the top
            right of the screen, and the “Character Menu” will be accessible
            from the sidebar.
          </div>
        ),
        panel: "panel1a",
        ariaControls: "panel1ah-content",
        id: "panel1ah-header",
      },
      {
        question: `I need to start a chapter all over, what do I do?`,
        answer: (
          <div>
            Click the menu icon on the top right of the screen, and the “Chapter
            Menu” will be accessible from the sidebar.
            <br />
            <br />
            All available chapters are replayable at any time.
          </div>
        ),
        panel: "panel1b",
        ariaControls: "panel1bh-content",
        id: "panel1bh-header",
      },
      {
        question: `How do I go back to the previous screen?`,
        answer: (
          <div>
            The ending of each chapter is dependent on the choices you made
            within each playthrough. Explore different choices to unlock new
            endings!
            <br />
            <br />
            In future chapters, you will find that some endings are dependent on
            choices made in earlier chapters. You will have to replay earlier
            chapters to unlock specific endings.`
          </div>
        ),
        panel: "panel1c",
        ariaControls: "panel1ch-content",
        id: "panel1ch-header",
      },
      {
        question: `When will new content be released?`,
        answer: `New content will be released on a weekly basis. Do check in regularly!`,
        panel: "panel1d",
        ariaControls: "panel1dh-content",
        id: "panel1dh-header",
      },
      {
        question: `What is the purpose of the reflection questions?`,
        answer: (
          <div>
            To Be You was conceived to help dismantle stereotypes, reduce
            prejudice, and ultimately foster greater empathy and inclusiveness
            among Singaporeans. By asking questions, we hope to encourage users
            to reflect on their experiences, and share their thoughts on the
            dilemmas that the characters are facing.
          </div>
        ),
        panel: "panel1e",
        ariaControls: "panel1eh-content",
        id: "panel1eh-header",
      },
    ],
  },
  {
    category: "Submitting an Issue",
    questions: [
      {
        question: `I found a bug in the game! Or I have an issue with part of the story! How do I report it?`,
        answer: (
          <div>
            Please take a screenshot of the error in the game or where you have
            a concern, and email{" "}
            <a href="mailto:tobeyou@better.sg">tobeyou@better.sg</a>
          </div>
        ),
        panel: "panel2a",
        ariaControls: "panel2ah-content",
        id: "panel2ah-header",
      },
    ],
  },
  {
    category: "Account issues",
    questions: [
      {
        question: `Why do I need to share my personal information? And how is this information used?`,
        answer: (
          <div>
            To provide a personalised gaming experience, and allow saving of
            progress, we will need to create an account for each user. We are
            analysing demographic trends in our data and may publish useful
            insights when we find them. This data will never be used to identify
            you. You can{" "}
            <a
              href="https://tobeyou.sg/privacypolicy.html"
              target="_blank"
              rel="noreferrer"
            >
              read our privacy policy here
            </a>
            .
          </div>
        ),
        panel: "panel3a",
        ariaControls: "panel3ah-content",
        id: "panel3ah-header",
      },
      {
        question: `I would like to make changes to my profile! How do I do that?`,
        answer: (
          <div>
            You can rebuild your profile in the “Account Menu”. Click the menu
            icon on the top right of the screen, and then click the option to
            Rebuild Your Profile.
          </div>
        ),
        panel: "panel3b",
        ariaControls: "panel3bh-content",
        id: "panel3bh-header",
      },
    ],
  },
  {
    category: "About the Game and Team",
    questions: [
      {
        question: `What is To Be You about?`,
        answer: (
          <div>
            To Be You is an experiential and interactive mobile game that seeks
            to cultivate empathy debuts on 21 July 2021, Singapore’s Racial
            Harmony Day. The immersive fiction game gets to the heart of empathy
            by letting players experience "life" as someone else, make life
            choices, discover challenges and dilemmas, and connect with the life
            journeys of people from different backgrounds.
            <br />
            <br />
            First conceptualised by a team from Better.sg in 2020, To Be You won
            the top prize at the 2020 MCCY ‘A Mission:Unite Hackathon’, a
            hackathon spurring youths to identify challenges and ideate ways to
            bring about greater social compact. Conceived to help dismantle
            stereotypes, reduce prejudice, and ultimately foster greater empathy
            and inclusiveness among Singaporeans, To Be You offers a fun game
            experience that will deliberate issues pertinent to the society
            today. To achieve authentic representations of what Singaporeans go
            through emotionally in the face of discrimination, To Be You worked
            with community organisations, focus groups, researchers, and writers
            to create compelling fictional stories based upon real stories from
            Singaporeans.
            <br />
            <br />
            “In a multicultural society, empathy is not optional. Our diversity
            is what makes us unique and we really want this game to be something
            that sparks change in the communities. Our team believes that
            empathy cannot be taught through lessons or excursions- it must be
            experienced and felt. We want Singaporeans to learn about the
            challenges of people different from themselves, to interact with
            their peers, to take the time to listen to their stories and
            experiences, and to understand what it’s like to be somebody else,”
            said Gaurav Keerthi, CEO of Better.sg and Co-Lead of To Be You.{" "}
          </div>
        ),
        panel: "panel4a",
        ariaControls: "panel4ah-content",
        id: "panel4ah-header",
      },
      {
        question: `I would like to make changes to my profile! How do I do that?`,
        answer: (
          <div>
            You can rebuild your profile in the “Account Menu”. Click the menu
            icon on the top right of the screen, and then click the option to
            Rebuild Your Profile.
          </div>
        ),
        panel: "panel4b",
        ariaControls: "panel4bh-content",
        id: "panel4bh-header",
      },
      {
        question: `Tell me more about Better.sg!`,
        answer: (
          <div>
            Better.sg is a non-profit volunteer-run organisation that drives
            techforgood in Singapore. We build and supercharge innovative
            digital tools to address societal issues. We help organisations do
            more social good using technology. We empower and engage the
            multidisciplinary techforgood community in Singapore. Find out more
            about us at{" "}
            <a href="https://better.sg" target="_blank" rel="noreferrer">
              {" "}
              https://better.sg/
            </a>
          </div>
        ),
        panel: "panel4c",
        ariaControls: "panel4ch-content",
        id: "panel4ch-header",
      },
    ],
  },
];
