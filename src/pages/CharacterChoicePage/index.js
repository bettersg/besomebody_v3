import React, { useState, useEffect , useRef } from 'react'
import makeStyles from '@material-ui/core/styles/makeStyles'
import {
    Avatar,
    Box,
    Typography,
    Grid,
  } from '@material-ui/core'
import { useAuth } from '../../contexts/AuthContext';
import { useSnackbar } from '../../contexts/SnackbarContext'
import { CHARACTER_MAP } from '../../models/storyMap'
import { getDbUser }  from '../../models/userModel.js';
import { IntroBanner } from "../../components/IntroBanner"
import { useInkContext } from '../../contexts/InkContext'
import { Link } from 'react-router-dom'
import CharacterAvatar from "./CharacterAvatar";

// Constants
import "./styles.scss"

const useStyles = makeStyles(theme => ({
    CharChoiceWrapper: {
        height: '660px',
        [theme.breakpoints.only('xs')]: {
            height: '100vh',
        },
        width: "100%", 
        backgroundColor: "white", 
        
        overflow: "auto", 
        '&::-webkit-scrollbar': {
            width: '0'
        },
    },
    scrollmenu: {
        width: "64px",
        height: "64px"
    },
    scrollHeading: {
        paddingTop: 30,
        marginLeft: 'auto',
        marginRight: 'auto',
        textAlign: 'center',
        textTransform: 'uppercase',
        fontSize: '0.8rem',
    },
    nonPlayable: {
        paddingTop: 30,
        marginLeft: 'auto',
        marginRight: 'auto',
        textAlign: 'center',        
        fontSize: '0.8rem',
        padding: 20,
    }
}))

export const CharacterChoicePage = () => {
    const classes = useStyles()
    
    const {
        isStoryStarted,
        hasSavedState,
    
        getStory,
        resetStory,
        startStoryFrom,
        saveStory,
        loadSavedStory,
        resetSavedStory,
        globalVariables,
    } = useInkContext()
    
    // Auth Context
	const { currentUser } = useAuth()
	// TODO : fix the userInfo. firebase currentUser does not pass the profile fields properly.
	const [userFromDb, setUserFromDb] = useState(null)
  
	useEffect(() => {
	  const getUser = async () => {
		const user = await getDbUser(currentUser.id)
		return setUserFromDb(user)
	  }
  
	  getUser()
	}, [currentUser.id])

	const characters = CHARACTER_MAP;

    const randNum = () => {
        return Math.round((Math.random() + 1) * 200)
    }


    return (
        <Box className={classes.CharChoiceWrapper} >
            <Typography className={classes.scrollHeading}>Character List</Typography>
            <div className="CharacterChoices__scrollMenu">
                {characters.map((persona, i) => {
                    return (
                        <div className="CharacterChoices__scrollMenu__character">                            
                            <Avatar
                                alt={persona.name}
                                src={persona.profileImage}
                                className={classes.scrollmenu} 
                            />
                            <div className={`${persona.playable == false ? "disable" : "active"}`} >{persona.name.split(" ")[0]}</div>                            
                        </div>
                        
                    )
                })}
                
            </div>

            {/* <!-- Continue Playing Banner --> */}
            {/* 
            {isStoryStarted && hasSavedState && (
                <div
                    className="CharacterChoices__banner"
                    style={{ backgroundImage: `url(/character_choice_page/nadia.png)` }}
                >
                
                    <div className="grid-container">
                        <div>
                            <div className="item1_continuePlaying">Continue Playing</div>
                            <div className="item2_characterName">Nadia</div>
                        </div>

                        <div className="item4_playButton">
                            <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <circle cx="25" cy="25" r="25" fill="#664EFC" />
                                <path d="M34.0278 25L20.4862 35.8253V14.1747L34.0278 25Z" fill="white" />
                            </svg>
                        </div>
                    </div>
                </div>
            )} 
            */}

            {/* <!-- Character card --> */}
            {characters.map((persona, i) => {
                return (
                    ( persona.playable == true ? 
                        <div className="CharacterChoices__card">
                            <div className="CharacterChoices__card__feed">
                                <Link to={'/chapters/' + persona.linkName}><img className="CharacterChoices__card__feed--profilePic" src={persona.profileImage}/></Link>
                                

                                <div>
                                    <div className="profile_Name">{persona.name}</div>
                                    {/* <div className="profile_status">Not played</div> */}
                                </div>
                            </div>

                            <Link to={'/chapters/' + persona.linkName}><img className="CharacterChoices__card--imagePost" src={persona.characterIntroImage}/></Link>

                            {/* like and share icons */}
                            <div class="CharacterChoices__card--profileButtons">
                               
                                    <img src="/character_choice_page/heart.svg" width="24px" height="24px"/>
                               

                                
                                    <img src="/character_choice_page/share.svg" width="24px" height="24px"/>
                                
                            </div>

                            <div className="CharacterChoices__card--description">
                                <div class="likes">{randNum()} likes</div>
                                <div class="post_caption">
                                    <p><b>{persona.name.split(" ")[0]}</b>:  {persona.description}</p>
                                </div>

                            </div>

                            <div className="CharacterChoices__discover">
                                <div class="profile_tile">
                                    <p>Discover {persona.name.split(" ")[0]}'s story</p>
                                </div>
                                <div>
                                    <a href={'/chapters/' + persona.linkName}><div class="play_button">Play</div></a>
                                </div>
                            </div>
                            <div className="CharacterChoices__bottomDivider"></div>
                        </div>

                        :
                        <div className={classes.nonPlayable}>
                            
                            <Typography variant="overline"> Locked Character </Typography><br />                                    
                            <CharacterAvatar personaInfo={persona} key={i} />                            
                        </div>
                    )
                )
            })}
        </Box>
    )
}

export default CharacterChoicePage;
