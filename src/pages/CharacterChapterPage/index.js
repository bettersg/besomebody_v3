import React, { useEffect, useState }from "react";
import makeStyles from '@material-ui/core/styles/makeStyles'
import "./styles.scss"
import "../styles.css"
import { useInkContext } from '../../contexts/InkContext'

import SVG from 'react-inlinesvg';
import { getDbUser }  from '../../models/userModel.js';
import { Box, Fade, Grid, Typography, Avatar } from '@material-ui/core'
import ChapterBox from "./ChapterBox"
import { IntroBanner } from "../../components/IntroBanner"

import { CHARACTER_MAP } from '../../models/storyMap'
import { useAuth } from '../../contexts/AuthContext'
import { useParams , Link } from 'react-router-dom'
import SideMenu from '../SimpleSideMenu/SideMenu'


// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
    CharChaptWrapper: {
        height: '660px',
        [theme.breakpoints.only('xs')]: {
          height: 'calc(var(--vh, 1vh) * 100)',
        },
        width: "100%", 
        backgroundColor: "#F0F1FC", 
        
        overflow: "auto", 
        '&::-webkit-scrollbar': {
            width: '0'
        },
    },
    avatar: {
        width: "64px",
        height: "64px", 
        marginRight: "21px", 
    }
}))

const CharacterChapterPage = (props) => {
    const classes = useStyles()  
    const { name } = useParams();
    const persona = CHARACTER_MAP.find((character) => character.linkName === name);
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

    const {
        // useInk hook initialiser
        initialiseUseInkHook,
        isStoryStarted,
        hasSavedState,
        loadSavedStory,
    
        // States    
        startStoryFrom,
      } = useInkContext()
    

    return (
        <Box className={classes.CharChaptWrapper} >
            <div className="game-menu">
                <SideMenu  />
            </div>
            <div className="CharacterChapterPage">
                <div className="CharacterChapterPage__top">
                    <Link to='/' style={{textDecoration: 'none'}}><div className="CharacterChapterPage__top__nav">
                        <SVG src="/chapter_choices_page/arrow.svg" />
                        <div className="CharacterChapterPage__top__nav--name" >Menu</div>
                    </div></Link>
                    <div className="CharacterChapterPage__top__character">
                        <Avatar
                            alt={persona.name}
                            src={persona.profileImage}
                            className={classes.avatar} 
                        />
                        <div>
                            <div className="CharacterChapterPage__top__character--name">{persona.name.split(" ")[0]}’s story</div>
                            {/* <Typography>1,000 playthroughs</Typography> */}
                        </div>

                    </div>
                    <Typography>{persona.description}</Typography>
                </div>
            </div>
            {/* {hasSavedState && (
                <IntroBanner loadSavedStory={loadSavedStory} persona={persona} />
            )} */}
            <div style={{ paddingTop: "24px" }}>
                {userFromDb && persona.chapters.length > 0 
                    ? persona.chapters.map((chapt,i) => {
                        return (
                            <div style={{display: "flex", justifyContent: "center"}}  key={i}>
                                <ChapterBox userFromDb={userFromDb} chaptDetails={chapt} total={persona.chapters.length} key={i} />
                            </div>
                        )
                    })
                    : <div> No Chapters Available </div>
                }
            </div>
        </Box>

    )
    
}
export default CharacterChapterPage;
