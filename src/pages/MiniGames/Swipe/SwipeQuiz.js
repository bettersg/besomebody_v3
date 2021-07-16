import React, { useState, useMemo, useEffect } from 'react'
import TinderCard from 'react-tinder-card'
import Card from '@material-ui/core/Card'
import CardContent from '@material-ui/core/CardContent'
import { Button, Box, Typography } from '@material-ui/core'
import { MINI_GAME_MAP } from '../../../models/miniGameMap'
import { makeStyles } from '@material-ui/styles'
import { useInkContext } from '../../../contexts/InkContext'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles({

  header: {
    fontSize: '2rem',
    padding: '20px',
  },

  cardContainer: {
    width: "100vw",
    maxWidth: "300px",
    height: "400px",
    marginBottom: "20px",

  },

  card: {
    width: "90vw",
    maxWidth: '300px',
    height: '400px',
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    position: 'absolute',
  },

});

function SwipeQuiz () {
  const { getStory, specialTags } = useInkContext();
  const quiz = MINI_GAME_MAP.filter(x => x.game_id===parseInt(specialTags.game_id))[0];
  const questions = quiz.questions;
  const alreadyRemoved = [];
  let cardsState = questions; // This fixes issues with updating characters state forcing it to use the current state and not the state that was active when the card was created.
  const classes = useStyles();

  const [cards, setCards] = useState([])
  const [lastDirection, setLastDirection] = useState()

  useEffect(() => {
    setCards(questions)
  },[])

  const childRefs = useMemo(() => Array(questions.length).fill(0).map(i => React.createRef()), [])

  const swiped = (direction, cardToDelete) => {
    setLastDirection(direction)
    alreadyRemoved.push(cardToDelete)
  }

  const outOfFrame = (correctAnswer) => {
    cardsState = cardsState.filter(card => card.correctAnswer !== correctAnswer)
    setCards(cardsState)
  }

  const continueToStory = () => {
    getStory();
  }

  const swipe = (dir) => {
    const cardsLeft = cards.filter(card => !alreadyRemoved.includes(card.question))
    if (cardsLeft.length) {
      
      const toBeRemoved = cardsLeft[cardsLeft.length - 1].question // Find the card object to be removed
      const index = questions.map(card => card.question).indexOf(toBeRemoved) // Find the index of which to make the reference to
      alreadyRemoved.push(toBeRemoved) // Make sure the next card gets removed next time if this card do not have time to exit the screen
      childRefs[index].current.swipe(dir) // Swipe the card!
    }
  }

  return (
  <>
  <Typography align="center" variant="h1" className={classes.header}>TRUE FALSE QUIZ</Typography>
  <Typography align="center" paragraph>Indicate your answers by clicking the buttons or swiping the cards. Swipe left for FALSE, right for TRUE.</Typography>
    {alreadyRemoved.length!==cards.length&&
      <Box 
        display="flex" 
        flexDirection="column"
        justifyContent="center"
        alignItems="center"
        className={classes.root}>
        <Box className={classes.cardContainer}>
          {cards.map((card, index) =>
            <Box
              key={card.question}
            >
               <TinderCard 
              position="absolute"
                ref={childRefs[index]} className='swipe' onSwipe={(dir) => swiped(dir, card.correctAnswer)} onCardLeftScreen={() => outOfFrame(card.correctAnswer)}>
                <Card className={classes.card} variant="outlined">
                  <CardContent >
                  <h3>ANSWER: {card.correctAnswer}</h3>
                  <p>{card.explanation}</p>
                  </CardContent>
                </Card> 
              </TinderCard>
              <TinderCard 
              position="absolute"
                ref={childRefs[index]} className='swipe' onSwipe={(dir) => swiped(dir, card.question)} >
                <Card className={classes.card} variant="outlined">
                  <CardContent >
                  <h3>QUESTION {index+1}</h3>
                  <p>{card.question}</p>
                  </CardContent>
                </Card> 
              </TinderCard>
            </Box>
  
          )}
        </Box>
        <Box className={classes.buttons} display="flex">
          <Box m={1}><Button color="primary" variant="contained" onClick={() => swipe('left')}>FALSE</Button></Box>
          <Box m={1}><Button color="primary" variant="contained" onClick={() => swipe('right')}>TRUE</Button></Box>
        </Box>
      </Box>
    }

    {alreadyRemoved.length===cards.length&&
      <Button variant="contained" 
        className="nextButton"
        color="secondary" key="next" onClick={()=>{continueToStory();}} 
        >
          Back to Story
      </Button>
    }

  </>
  )
}

export default SwipeQuiz;