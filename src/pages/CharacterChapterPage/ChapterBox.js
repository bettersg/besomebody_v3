/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'
import { useHistory } from 'react-router-dom'
import loadImage from 'image-promise'
import { makeStyles } from '@material-ui/core/styles'
import Card from '@material-ui/core/Card'
import CardActions from '@material-ui/core/CardActions'
import CardContent from '@material-ui/core/CardContent'
import Button from '@material-ui/core/Button'
import Typography from '@material-ui/core/Typography'
import Grid from '@material-ui/core/Grid'
import FiberManualRecordIcon from '@material-ui/icons/FiberManualRecord'
import PacmanLoader from 'react-spinners/PacmanLoader'
import { useInkContext } from '../../contexts/InkContext'
// import { CHARACTER_MAP } from '../../models/storyMap'
// import NadiaInk from '../../stories/nadia.ink.json'
// import AmanInk from '../../stories/aman.ink.json'

import './styles.scss'

const useStyles = makeStyles({
  root: {
    width: '95%',
    borderRadius: 10,
    textAlign: 'left',
    marginBottom: '10px',
  },
  card: {
    paddingTop: "24px", 
    width: "100%", 
  }
})

// const getInkJson = (nameParam) => {
//   switch (nameParam) {
//     case 'nadia': {
//       return {
//         inkJson: NadiaInk,
//         characterId: 1,
//       }
//     }
//     case 'aman': {
//       return {
//         inkJson: AmanInk,
//         characterId: 2,
//       }
//     }
//     default: {
//       return null
//     }
//   }
// }

export default function ChapterBox(props) {
  const classes = useStyles()
  const { chaptDetails, total, userFromDb , characterId } = props
  const history = useHistory()

  // used for the image preloader
  const [isLoading, setIsLoading] = useState(false)

  // // ==============================================================
  // // Get name param from the route path
  // // ==============================================================
  const { name } = useParams()

  // // ==============================================================
  // // Get the ink json file, character id, and chapter id
  // // ==============================================================
  // const { inkJson, characterId } = getInkJson(name)

  // // ==============================================================
  // // Get the useInk hook initialiser from the context, and other variables if needed
  // // ==============================================================
  const {
    // useInk hook initialiser
    // initialiseUseInkHook,
    isStoryStarted,
    hasSavedState,
    loadSavedStory,

    // States    
    startStoryFrom,
  } = useInkContext()

  // // ==============================================================
  // // Initialise the useInk hook within a useEffect to prevent multiple instances of initialising
  // // ==============================================================
  // useEffect(() => {
  //   initialiseUseInkHook(inkJson, characterId)
  // }, [])

  const getEndingsUnlocked = () => {
    const currentChapterInUserDb = userFromDb?.achievements?.find(
      (achievement) =>
        achievement.character === characterId &&
        achievement.chapter === chaptDetails.chapterId
    );
    return currentChapterInUserDb ? currentChapterInUserDb.endings.length : 0;
  }

  var rows = []
  for (var i = 0; i < getEndingsUnlocked(); i++) {
      rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#999999", marginRight: 1}}/>);
  }
  for (var j = 0; j < chaptDetails.endings.length - getEndingsUnlocked(); j ++) {
      rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
  }

  const handleChapterStart = () => {
    setIsLoading(true)
    console.log(chaptDetails.images)
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
    setIsLoading(false)
    startStoryFrom(chaptDetails.knotTag)
    history.push('/story/' + name)
  }
  
  // const handleLoadSavedStory = () => {
  //   loadSavedStory()
  //   history.push('/story/' + name)
  // }

  return (
    <Card className={classes.root} key={chaptDetails.number}>     
      <Grid container>
          <CardContent className={classes.card}>
            <div className="ChapterBox">
              <div className="ChapterBox__chaptDetails">
                {/* TODO: this needs to be pulled from the player save data, not from the story*/}
                {chaptDetails.new == true ? 
                  <div className="ChapterBox__chaptDetails__bubble new">NEW!</div>
                 : chaptDetails.playable == false ? 
                 <div className="ChapterBox__chaptDetails__bubble coming">COMING SOON</div> :
                 null}
                <div className="ChapterBox__chaptDetails--chaptText">
                  Chapter {chaptDetails.number} of {total}
                </div>

              </div>

              <div className="ChapterBox__chaptTitle">
                <div className="ChapterBox__chaptTitle--text">
                  <div className="ChapterBox__chaptTitle--name">{chaptDetails.title}</div>
                  <div className="ChapterBox__summary">{chaptDetails.summary}</div>
                </div>

                {isLoading ? (
                  <div className="spinner-div">
                    <PacmanLoader color="#e5e5e5" loading={isLoading} size={80} />
                  </div>
                ) : (
                    chaptDetails.playable == false ? (
                      <div
                        className={`ChapterBox__chaptTitle--button disable`}
                      >
                        Soon
                      </div>
                    ) : (
                      <div
                        className={`ChapterBox__chaptTitle--button`}
                        onClick={() => handleChapterStart()}
                      >
                        Play
                      </div>
                    )
                )}
              </div>

            </div>
            

            {chaptDetails.playable == true ?
              <div className="ChapterBox__endings">
                {rows}
                <span style={{ marginLeft: '8px' }}>
                  {getEndingsUnlocked()} of {chaptDetails.endings.length} endings unlocked
                </span> 
              </div>:
              null
            }
          </CardContent>
        
      </Grid>
    </Card>
  )
}
