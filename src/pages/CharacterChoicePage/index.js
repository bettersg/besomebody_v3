import React, { useState, useEffect } from 'react'
import makeStyles from '@material-ui/core/styles/makeStyles'
import Box from '@material-ui/core/Box'
import Avatar from "@material-ui/core/Avatar";

import { useAuth } from '../../contexts/AuthContext';
import { useSnackbar } from '../../contexts/SnackbarContext'
import { CHARACTER_MAP } from '../../models/storyMap'
import { getDbUser }  from '../../models/userModel.js';
import { IntroBanner } from "../../components/IntroBanner"

// Constants
import "./styles.scss"

const useStyles = makeStyles((theme) => ({
    CharChoiceWrapper: {
        height: '90vh',
        [theme.breakpoints.up('xs')]: {
            height: '660px',
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
    }
}))

const CharacterChoicePage = () => {
    const classes = useStyles()  

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
        return Math.round((Math.random() + 1) * 888)
    }


    return (
        <Box className={classes.CharChoiceWrapper} >
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
            <IntroBanner />

            {/* <!-- Character card --> */}
            {characters.map((persona, i) => {
                return (
                    ( persona.playable == true ? 
                        <div className="CharacterChoices__card">
                            <div className="CharacterChoices__card__feed">
                                <a href=""><img className="CharacterChoices__card__feed--profilePic" src={persona.profileImage}/></a>
                                

                                <div>
                                    <div className="profile_Name">{persona.name.split(" ")[0]}</div>
                                    <div className="profile_status">Not played</div>
                                </div>
                            </div>

                            <img className="CharacterChoices__card--imagePost" src={persona.characterIntroImage}/>

                            {/* like and share icons */}
                            <div class="CharacterChoices__card--profileButtons">
                                <a href="">
                                    <img src="/character_choice_page/heart.svg" width="24px" height="24px"/>
                                </a>

                                <a href="">
                                    <img src="/character_choice_page/share.svg" width="24px" height="24px"/>
                                </a>
                            </div>

                            <div className="CharacterChoices__card--description">
                                <div class="likes">{randNum()} likes</div>
                                <div class="post_caption">
                                    <p><b>{persona.name.split(" ")[0]}</b> {persona.description}</p>
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

                        : null 
                    )
                )
            })}
        </Box>
    )
}

export default CharacterChoicePage;
