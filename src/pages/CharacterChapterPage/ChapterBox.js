import React, { useState } from 'react'
import { useParams } from 'react-router-dom'
import { useHistory } from 'react-router-dom'
import loadImage from 'image-promise'
import { makeStyles } from '@material-ui/core/styles'
import Card from '@material-ui/core/Card'
import CardContent from '@material-ui/core/CardContent'
import FiberManualRecordIcon from '@material-ui/icons/FiberManualRecord'
import PacmanLoader from 'react-spinners/PacmanLoader'
import { useInkContext } from '../../contexts/InkContext'

import './styles.scss'

const useStyles = makeStyles({
  root: {
    width: '95%',
    borderRadius: 10,
    textAlign: 'left',
    marginBottom: '10px',
  },
  card: {
    paddingTop: '24px',
    width: '100%',
  },
})

export default function ChapterBox(props) {
  const { chaptDetails, total, userFromDb, characterId } = props

  const classes = useStyles()
  const history = useHistory()
  const { name } = useParams()

  // used for the image preloader
  const [isLoading, setIsLoading] = useState(false)

  const {
    // States
    startStoryFrom,
    loadSavedVariables,
    
  } = useInkContext()

  const getEndingsUnlocked = () => {
    const currentChapterInUserDb = userFromDb?.achievements?.find(
      (achievement) =>
        achievement.character === characterId &&
        achievement.chapter === chaptDetails.chapterId
    )
    return currentChapterInUserDb ? currentChapterInUserDb.endings.length : 0
  }

  const previousChapterInUserDb = () => {
    const previousChapterNumber = chaptDetails.chapterId - 1
    // console.log('previous chapter: ' , previousChapterNumber)
    if (previousChapterNumber > 0) {
      const previousChapterData = userFromDb?.achievements?.find(
        (achievement) =>
          achievement.character === characterId &&
          achievement.chapter === previousChapterNumber 
      )
      // console.log(previousChapterData)
      return previousChapterData ? true : false
    }
    return true
  }
  // console.log(chaptDetails.chapterId , previousChapterInUserDb())
  
  var rows = []
  for (var i = 0; i < getEndingsUnlocked(); i++) {
    rows.push(
      <FiberManualRecordIcon
        key={`1:${i}`}
        style={{ fontSize: 8, color: '#999999', marginRight: 1 }}
      />
    )
  }
  for (var j = 0; j < chaptDetails.endings.length - getEndingsUnlocked(); j++) {
    rows.push(
      <FiberManualRecordIcon
        key={`2:${j}`}
        style={{ fontSize: 8, color: '#E5E5E5', marginRight: 1 }}
      />
    )
  }

  const handleChapterStart = () => {
    setIsLoading(true)
    // console.log(chaptDetails.images)
    loadImage(chaptDetails.images)
      .then(function (allImgs) {
        console.log(allImgs.length, 'images loaded!', allImgs)
      })
      .catch(function (err) {
        console.error('One or more images have failed to load :(')
        console.error(err.errored)
        console.info('But these loaded fine:')
        console.info(err.loaded)
      })    
    loadSavedVariables(chaptDetails.knotTag)      // doing this creates a problem - the story starts at the knotTag with all the previous globalVariables ... but getStory then jumps ahead to the last player position in the autosave game.
    startStoryFrom(chaptDetails.knotTag)
    setIsLoading(false)
    history.push('/story/' + name)
  }

  return (
    <Card className={classes.root} key={chaptDetails.number}>
      <CardContent className={classes.card}>
        <div className="ChapterBox">
          <div className="ChapterBox__chaptDetails">
            {chaptDetails.new == true ? (
              <div className="ChapterBox__chaptDetails__bubble new">NEW!</div>
            ) : chaptDetails.playable == false ? (
              <div className="ChapterBox__chaptDetails__bubble coming">
                COMING SOON
              </div>
            ) : null}
            <div className="ChapterBox__chaptDetails--chaptText">
              Chapter {chaptDetails.number} of {total}
            </div>
          </div>

          <div className="ChapterBox__chaptTitle">
            <div className="ChapterBox__chaptTitle--text">
              <div className="ChapterBox__chaptTitle--name">
                {chaptDetails.title}
              </div>
              <div className="ChapterBox__summary">{chaptDetails.summary}</div>
            </div>

            {isLoading ? (
              <div className="spinner-div">
                <PacmanLoader color="#e5e5e5" loading={isLoading} size={80} />
              </div>
            ) : chaptDetails.playable == false ? (
              <div className={`ChapterBox__chaptTitle--button disable`}>
                SOON
              </div>
            )   : previousChapterInUserDb() || chaptDetails.chapterId == 1 ? (
                  <div
                    className={`ChapterBox__chaptTitle--button`}
                    onClick={() => handleChapterStart()}
                  >
                  Play
                  </div>
                )
                  : (
                    <div className={`ChapterBox__chaptTitle--button disable`}>
                      LOCKED
                    </div>
                  
            )}            
          </div>
        </div>

        {chaptDetails.playable == true ? (
          <div className="ChapterBox__endings">
            {rows}
            <span style={{ marginLeft: '8px' }}>
              {getEndingsUnlocked()} of {chaptDetails.endings.length} endings
              unlocked
            </span>
          </div>
        ) : null}        
      </CardContent>
    </Card>
  )
}
