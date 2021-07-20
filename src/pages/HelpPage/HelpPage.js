import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Accordion from '@material-ui/core/Accordion';
import AccordionDetails from '@material-ui/core/AccordionDetails';
import AccordionSummary from '@material-ui/core/AccordionSummary';
import Typography from '@material-ui/core/Typography';
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';
import SideMenu from '../SimpleSideMenu/SideMenu'
import { Grid, ButtonBase } from "@material-ui/core"
import { useParams, Link, useHistory } from 'react-router-dom'
import SVG from 'react-inlinesvg'

import "./style.scss"

import { 
  HELP_ICONS, 
  HELP_DETAILS,
} from "./constants"



// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  
  paragraphWrapper: {
    backgroundColor: "#F0F1FC", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 
    overflow: 'auto',
    '&::-webkit-scrollbar': {
      width: '0',
    },
  },
  helpWrapper: {
    backgroundColor: "white", 
    marginBottom: "8px", 
  }, 
  heading: {
    fontSize: theme.typography.pxToRem(15),
    // flexBasis: '33.33%',
    fontWeight: 700, 
    fontSize: "20px", 
    flexShrink: 0,
    padding: "20px",
    paddingTop: "40px",  
  },
  question: {
    color: "#3835C1", 
    fontSize: "15px", 
  }, 
  answer: {
    fontSize: "15px", 
    color: "#000A11", 
  },
  secondaryHeading: {
    fontSize: theme.typography.pxToRem(15),
    color: theme.palette.text.secondary,
  },
  options: {
    marginTop: "28px", 
  },
  button: {
    height: "124px", 
    width: "100%", 
    backgroundColor: "white", 
    padding: "20px", 
    borderRadius: "8px", 
    boxShadow: "0px 4px 8px 0px #26248F29",
    color: "#000A11", 
    display: "flex",
    justifyContent:"center", 
    flexDirection: "column",  
    
  }, 
  accordian: {
    boxShadow: "unset", 
  },
}));

export default function Help() {
  const classes = useStyles();
  const [expanded, setExpanded] = React.useState(false);

  const handleChange = (panel) => (event, isExpanded) => {
    setExpanded(isExpanded ? panel : false);
  };

  return (
    <div className={classes.paragraphWrapper}>
      <div className="HelpPage__nav">
        <Link to="/" style={{ textDecoration: 'none' }}>
          <div style={{ display: 'flex' }}>
            <SVG src="/chapter_choices_page/arrow.svg" />
            <div className="HelpPage__nav--name">Help</div>
          </div>
        </Link>
        <SideMenu src="/commons/menu-icon.svg" />
      </div>

      <div className="HelpPage__top" >
        <div>How can we help?</div>
        <Grid container className={classes.options} spacing={2}>
          {HELP_ICONS.map((content) => {
            return (
              <Grid item xs={6}>
                <ButtonBase className={classes.button}>
                  <div className="HelpPage__top--icon">
                    <SVG src={content.icon} />
                  </div>
                  {content.name}
                </ButtonBase>
              </Grid>
            )
          })}
        </Grid>
      </div>

      {
        HELP_DETAILS.map((content, idx) => {
          return (
            <div className={classes.helpWrapper}>
              <Typography className={classes.heading}>{content.category}</Typography>
              {content.questions.map((oneQuestion, idx) => {
                return (
                  <Accordion expanded={expanded === oneQuestion.panel} onChange={handleChange(oneQuestion.panel)} className={classes.accordian}>
                    <AccordionSummary
                      expandIcon={<ExpandMoreIcon />}
                      aria-controls={oneQuestion.ariaControls}
                      id={oneQuestion.id}
                    >
                      <Typography className={classes.question}>{oneQuestion.question}</Typography>
                    </AccordionSummary>
                    <AccordionDetails>
                      <Typography className={classes.answer}>{oneQuestion.answer}</Typography>
                    </AccordionDetails>
                  </Accordion>
                )
              })}

            </div>
          )

        })
      }

      {/* <Accordion expanded={expanded === 'panel1'} onChange={handleChange('panel1')}>
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel1bh-content"
          id="panel1bh-header"
        >
          <Typography className={classes.heading}>Playing the Game</Typography>
        </AccordionSummary>
        <AccordionDetails>
          <Typography  >Q: I want to play as the other characters! How do I access them?<br />
          
            After creating a new account or logging in, all users are automatically directed to the “Character Menu”, and all available characters are accessible from there.

            If you are in the middle of a game, click the menu icon on the top right of the screen, and the “Character Menu” will be accessible from the sidebar.
            <hr />
            Q: I need to start a chapter all over, what do I do?<br />

            Click the menu icon on the top right of the screen, and the “Chapter Menu” will be accessible from the sidebar.

            All available chapters are replayable at any time.
            <hr />  
            Q: How do I go back to the previous screen?<br />

            The game can only be played going forward, and you will need to restart the chapter if you wish to view an earlier screen.
            <hr />  
            Q: How do I unlock different endings?<br />

            The ending of each chapter is dependent on the choices you made within each playthrough. Explore different choices to unlock new endings!

            In future chapters, you will find that some endings are dependent on choices made in earlier chapters. You will have to replay earlier chapters to unlock specific endings.
            <hr />  
            Q: When will new content be released?<br />

            New content will be released on a weekly basis. Do check in regularly!
            <hr />  
            Q: What is the purpose of the reflection questions?<br />

            To Be You was conceived to help dismantle stereotypes, reduce prejudice, and ultimately foster greater empathy and inclusiveness among Singaporeans. By asking questions, we hope to encourage users to reflect on their experiences, and share their thoughts on the dilemmas that the characters are facing.
            <hr />  
          </Typography>
        </AccordionDetails>
      </Accordion>
      <Accordion expanded={expanded === 'panel2'} onChange={handleChange('panel2')}>
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel2bh-content"
          id="panel2bh-header"
        >
          <Typography className={classes.heading}>Submitting an Issue</Typography>
          <Typography className={classes.secondaryHeading}>
            Let us know if you have a concern or found a bug.
          </Typography>
        </AccordionSummary>
        <AccordionDetails>
          <Typography>
          Q: I found a bug in the game! Or I have an issue with part of the story! How do I report it? <br />

          Please take a screenshot of the error in the game or where you have a concern, and email <a href="mailto:tobeyou@better.sg">tobeyou@better.sg</a>
          </Typography>
        </AccordionDetails>
      </Accordion>
      <Accordion expanded={expanded === 'panel3'} onChange={handleChange('panel3')}>
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel3bh-content"
          id="panel3bh-header"
        >
          <Typography className={classes.heading}>Account issues</Typography>
          <Typography className={classes.secondaryHeading}>
            Disabling, deleting, and privacy issues.
          </Typography>
        </AccordionSummary>
        <AccordionDetails>
          <Typography>
          Q: Why do I need to share my personal information? And how is this information used?<br />

          To provide a personalised gaming experience, and allow saving of progress, we will need to create an account for each user. We are analysing demographic trends in our data and may publish useful insights when we find them. This data will never be used to identify you. You can <a href="https://tobeyou.sg/privacypolicy.html" target="_blank" rel="noreferrer">read our privacy policy here</a>.
            <hr />
            
          Q: I would like to make changes to my profile! How do I do that?<br />

          You can rebuild your profile in the “Account Menu”. Click the menu icon on the top right of the screen, and then click the option to Rebuild Your Profile.

          </Typography>
        </AccordionDetails>
      </Accordion>
      <Accordion expanded={expanded === 'panel4'} onChange={handleChange('panel4')}>
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel4bh-content"
          id="panel4bh-header"
        >
            <Typography className={classes.heading}>About the Game and Team</Typography>
            <Typography className={classes.secondaryHeading}>
            Find out what it's about and who made it
          </Typography>
        </AccordionSummary>
        <AccordionDetails>
          <Typography>
            
        Q: What is To Be You about?<br />

        To Be You is an experiential and interactive mobile game that seeks to cultivate empathy debuts on 21 July 2021, Singapore’s Racial Harmony Day. The immersive fiction game gets to the heart of empathy by letting players experience "life" as someone else, make life choices, discover challenges and dilemmas, and connect with the life journeys of people from different backgrounds.<br />

        First conceptualised by a team from Better.sg in 2020, To Be You won the top prize at the 2020 MCCY ‘A Mission:Unite Hackathon’, a hackathon spurring youths to identify challenges and ideate ways to bring about greater social compact. Conceived to help dismantle stereotypes, reduce prejudice, and ultimately foster greater empathy and inclusiveness among Singaporeans, To Be You offers a fun game experience that will deliberate issues pertinent to the society today. To achieve authentic representations of what Singaporeans go through emotionally in the face of discrimination, To Be You worked with community organisations, focus groups, researchers, and writers to create compelling fictional stories based upon real stories from Singaporeans.<br />

        “In a multicultural society, empathy is not optional. Our diversity is what makes us unique and we really want this game to be something that sparks change in the communities. Our team believes that empathy cannot be taught through lessons or excursions- it must be experienced and felt. We want Singaporeans to learn about the challenges of people different from themselves, to interact with their peers, to take the time to listen to their stories and experiences, and to understand what it’s like to be somebody else,” said Gaurav Keerthi, CEO of Better.sg and Co-Lead of To Be You. 
        <hr />
        Q: Tell me more about Better.sg!<br />

        Better.sg is a non-profit volunteer-run organisation that drives techforgood in Singapore. We build and supercharge innovative digital tools to address societal issues. We help organisations do more social good using technology. We empower and engage the multidisciplinary techforgood community in Singapore. Find out more about us at <a href="https://better.sg" target="_blank" rel="noreferrer"> https://better.sg/</a>!



          </Typography>
        </AccordionDetails>
      </Accordion> */}
    </div>
  );
}
