import React, { useState, useEffect } from 'react';
import { useParams , Link , useHistory } from 'react-router-dom'
import SVG from 'react-inlinesvg';

import SwipeableDrawer from '@material-ui/core/SwipeableDrawer';
import { useSnackbar } from '../../../contexts/SnackbarContext'

import { useAuth } from '../../../contexts/AuthContext'
import { getDbUser } from '../../../models/userModel.js';

// Constants
import { CHARACTER_MAP } from '../../../models/storyMap';
import { MENU_ITEMS } from './constants';

import "./style.scss"; 

export default function SwipeableTemporaryDrawer() {
  const history = useHistory(); 
  const { name  } = useParams(); 
  const persona = CHARACTER_MAP.find((character) => character.linkName === name); 
  console.log(persona)
  // console.log(persona.chapters.map((chapt, i) => {return (chapt.num)}))

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  // for the side-nav swipeable drawer
  const [state, setState] = React.useState({
    left: false,    
  });

  const toggleDrawer = (anchor, open) => (event) => {
    if (event && event.type === 'keydown' && (event.key === 'Tab' || event.key === 'Shift')) {
      return;
    }
    setState({ ...state, [anchor]: open });
  };


  // for the user profile
  const { currentUser } = useAuth()
  const [userFromDb, setUserFromDb] = useState(null)

	useEffect(() => {
	  const getUser = async () => {
		const user = await getDbUser(currentUser.id)
		return setUserFromDb(user)
	  }
	  getUser()
	}, [currentUser.id])

  // for the Logout
  const { logout } = useAuth()

  const logoutUser = async () => {
        try {          
          await logout()
          history.push('/')
        } catch (err) {
          setSnackbar({
            message: `Failed to log out: ${err.message}`,
            open: true,
            type: 'error',
          })
        }       
  }


  // the actual menu
  const list = (anchor) => (
    <div
      id="menu-items"
      role="presentation"
      className="SideMenu"
      onClick={toggleDrawer(anchor, false)}
      onKeyDown={toggleDrawer(anchor, false)}
      style={{backgroundColor:persona.primaryColour, height: "100%"}}
    >
      <div className="SideMenu__background">
        <img src={persona.profileImage} />
      </div>
      
      {/* <div className="SideMenu__top" style={{backgroundColor:persona.primaryColour}}> */}
      <div 
        className="SideMenu__top" 
        style={{
          backgroundImage:`linear-gradient(to bottom, 
            ${persona.primaryColour+"B3"}, ${persona.primaryColour} 50%)`
        }}
      >
        <div className="SideMenu__current">Currently Playing</div>
        <div className="SideMenu__gameDetails">
          {name},
          <br/> Chapter 2
        </div>
        <div className="SideMenu__playSection">
          <div className="SideMenu__playSection--timeLeft">Time left in chapter: 3mins</div>
          <div className="SideMenu__playSection--playButton" style={{backgroundColor: persona.secondaryColour}}>
            <SVG src="/side_menu/play-button.svg" />
          </div>
        </div>
        
        <div className="SideMenu__menuitems" >
          {MENU_ITEMS.map((content) => 
            <div className="SideMenu__menuitems__item">
              <SVG src={content.src} className="SideMenu__menuitems__icons"/>
              <Link to="/" className="SideMenu__menuitems__label"><span>{content.label}</span></Link>
            </div>
          )}
        </div>
      <hr />
      <div className="SideMenu__bottom">
        <div className="SideMenu__menuitems__item" >
          <SVG src="/side_menu/logout.svg" className="SideMenu__menuitems__icons"/>
          <Link to="/" className="SideMenu__menuitems__label" onClick={logoutUser}><span>Sign Out</span></Link>
        </div>
      </div>
      </div>


      
    </div>
  );

  return (
    <div className="MenuWrapper">
      {['left'].map((anchor) => (
        <React.Fragment key={anchor}>
          <SVG src="/side_menu/menu-icon.svg" onClick={toggleDrawer(anchor, true)} className="MenuWrapper__menuButton" />
            <SwipeableDrawer
              anchor={anchor}
              open={state[anchor]}
              onClose={toggleDrawer(anchor, false)}
              onOpen={toggleDrawer(anchor, true)}
            >
              {list(anchor)}
            </SwipeableDrawer>
        </React.Fragment>
      ))}
    </div>
  );
}


 