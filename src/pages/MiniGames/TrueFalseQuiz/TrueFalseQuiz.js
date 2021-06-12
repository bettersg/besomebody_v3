import React, { useState, useMemo, useEffect } from 'react'
import TinderCard from 'react-tinder-card'
import Card from '@material-ui/core/Card'
import CardContent from '@material-ui/core/CardContent'
import { Button, Box, Typography } from '@material-ui/core'
import quizData from './data/quiz-data.json'
import { makeStyles } from '@material-ui/styles'
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

const questions = quizData.questions.reverse()
console.log(questions)
const alreadyRemoved = []
let cardsState = questions // This fixes issues with updating characters state forcing it to use the current state and not the state that was active when the card was created.

function TrueFalseQuiz () {

  const classes = useStyles();

  const [cards, setCards] = useState([])
  const [lastDirection, setLastDirection] = useState()

  useEffect(() => {
    setCards(questions)
  },[])


  const childRefs = useMemo(() => Array(questions.length).fill(0).map(i => React.createRef()), [])

  const swiped = (direction, cardToDelete) => {
    console.log('removing: ' + cardToDelete)
    setLastDirection(direction)
    alreadyRemoved.push(cardToDelete)
  }

  const outOfFrame = (card) => {
    cardsState = cardsState.filter(card => card.question !== card)
    setCards(cardsState)
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
              ref={childRefs[index]} className='swipe' onSwipe={(dir) => swiped(dir, card.question)} onCardLeftScreen={() => outOfFrame(card.question)}>
              <Card className={classes.card} variant="outlined">
                <CardContent >
                <h3>ANSWER: {card.correctAnswer}</h3>
                <p>{card.explanation}</p>
                </CardContent>
              </Card> 
            </TinderCard>
            <TinderCard 
            position="absolute"
              ref={childRefs[index]} className='swipe' onSwipe={(dir) => swiped(dir, card.question)} onCardLeftScreen={() => outOfFrame(card.question)}>
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
  </>
  )
}

export default TrueFalseQuiz;