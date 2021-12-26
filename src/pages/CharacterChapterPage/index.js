/* eslint-disable react-hooks/exhaustive-deps */
import React, { useEffect, useState } from 'react'
import makeStyles from '@material-ui/core/styles/makeStyles'
import { useInkContext } from '../../contexts/InkContext'
import SVG from 'react-inlinesvg'
import { getDbUser } from '../../models/userModel.js'
import { Box, Typography, Avatar, Button } from '@material-ui/core'
import ChapterBox from './ChapterBox'
import ReflectionChapter from './ReflectionChapter'
import { IntroBanner } from '../../components/IntroBanner'
import { CHARACTER_MAP } from '../../models/storyMap'
import { useAuth } from '../../contexts/AuthContext'
import { useParams, Link, useHistory } from 'react-router-dom'
import SideMenu from '../SimpleSideMenu/SideMenu'
import NadiaInk from '../../stories/nadia.ink.json'
import AmanInk from '../../stories/aman.ink.json'

import './styles.scss'
import '../styles.css'

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`)

const useStyles = makeStyles((theme) => ({
  CharChaptWrapper: {
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    width: '100%',
    backgroundColor: '#F0F1FC',

    overflow: 'auto',
    '&::-webkit-scrollbar': {
      width: '0',
    },
  },
  avatar: {
    width: '64px',
    height: '64px',
    marginRight: '21px',
  },
}))

const getInkJson = (nameParam) => {
  const persona = CHARACTER_MAP.find((character) => character.linkName === nameParam)
  return {
    inkJson: persona.jsonFile,
    characterId:persona.characterId,
  }

  // switch (nameParam) {
  //   case 'nadia': {
  //     return {
  //       inkJson: NadiaInk,
  //       characterId: 1,
  //     }
  //   }
  //   case 'aman': {
  //     return {
  //       inkJson: AmanInk,
  //       characterId: 2,
  //     }
  //   }
  //   default: {
  //     return null
  //   }
  // }
}

const CharacterChapterPage = (props) => {
  const classes = useStyles()
  const { name } = useParams()
  const history = useHistory()

  const persona = CHARACTER_MAP.find((character) => character.linkName === name)

  // Auth Context
  const { currentUser } = useAuth()
  const [userFromDb, setUserFromDb] = useState(null)

  useEffect(() => {
    const getUser = async () => {
      const user = await getDbUser(currentUser.id)
      return setUserFromDb(user)
    }

    getUser()
  }, [currentUser.id])

  // UseInk variables
  const { inkJson, characterId } = getInkJson(name)
  const {
    // useInk hook initialiser
    initialiseUseInkHook,
    hasSavedState,    

    // Methods
    resetStory,
   // loadSavedVariables,
    loadSavedStory,
  } = useInkContext()

  

  // Initialise the useInk hook within a useEffect to prevent multiple instances of initialising && make sure loadSavedVariables is called here
  useEffect(() => {
    resetStory()
    initialiseUseInkHook(inkJson, characterId)    
  }, [inkJson, characterId])

  // Load story
  const handleLoadSavedStory = () => {
    loadSavedStory()
    history.push('/story/' + name)
  }

  const currentCharCompleted = 'userFromDb?.character_' + characterId + '_completed'
  console.log(eval(currentCharCompleted))  

  return (
    <Box className={classes.CharChaptWrapper}>
      <div className="CharacterChapterPage">
        <div className="CharacterChapterPage__top">
          <div className="CharacterChapterPage__top__nav">
            <Link to="/" style={{ textDecoration: 'none', paddingLeft: '70px' }}>
              <div style={{ display: 'flex' }}>
                <SVG src="/chapter_choices_page/arrow.svg" />
                <div className="CharacterChapterPage__top__nav--name">Character Menu</div>
              </div>
            </Link>
            <SideMenu />
          </div>
          <div className="CharacterChapterPage__top__character">
            <Avatar
              alt={persona.name}
              src={persona.profileImage}
              className={classes.avatar}
            />
            <div>
              <div className="CharacterChapterPage__top__character--name">
                {persona.name.split(' ')[0]}’s story
              </div>
              {/* <Typography>1,000 playthroughs</Typography> */}
            </div>
          </div>
          <Typography>{persona.description}</Typography>
          
        </div>
      </div>
     
      {hasSavedState && (
            <Box             
              onClick={handleLoadSavedStory}
            >
              <IntroBanner persona={persona} />
            </Box>
          )}
      <div style={{ paddingTop: '24px' }}>
        {userFromDb && persona.chapters.length > 0 ? (
          persona.chapters.map((chapt, i) => {
            return (
              <div
                style={{ display: 'flex', justifyContent: 'center' }}
                key={i}
              >
                <ChapterBox
                  userFromDb={userFromDb}
                  characterId={characterId}
                  chaptDetails={chapt}
                  total={persona.chapters.length}
                />
              </div>
            )
          })
        ) : (
          <div> No Chapters Available </div>
        )}
        { eval(currentCharCompleted)  && 
                <ReflectionChapter
                userFromDb={userFromDb}
                characterId={characterId}
                chaptDetails={persona.reflectionBrowser[0]}            
              />
            }
      </div>
    </Box>
  )
}
export default CharacterChapterPage
