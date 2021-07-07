import React, { useState, useEffect } from 'react';
import { useParams , Link , useHistory } from 'react-router-dom'
import SVG from 'react-inlinesvg';

import clsx from 'clsx';
import { makeStyles } from '@material-ui/core/styles';
import { Avatar } from '@material-ui/core';
import SwipeableDrawer from '@material-ui/core/SwipeableDrawer';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';

import { useSnackbar } from '../../../contexts/SnackbarContext'

import { useAuth } from '../../../contexts/AuthContext'
import { getDbUser } from '../../../models/userModel.js';

// Constants
import { CHARACTER_MAP } from '../../../models/storyMap';
import { MENU_ITEMS } from './constants';


import "./style.scss"; 

const useStyles = makeStyles({
  list: {
    width: "310px",
  },
  fullList: {
    width: "310px",
  },
});

export default function SwipeableTemporaryDrawer() {
  const classes = useStyles();
  const history = useHistory(); 
  const { name  } = useParams(); 
  const persona = CHARACTER_MAP.find((character) => character.linkName === name); 
  // console.log(persona)
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


  // for the accordion
  const [expanded, setExpanded] = React.useState(false);

  const handleChange = (panel) => (event, isExpanded) => {
    setExpanded(isExpanded ? panel : false);
  };

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
      style={{backgroundColor:"#664EFC"}}
    >
      <div className="SideMenu__top" >
        <div className="SideMenu__current">Currently Playing</div>
        <div className="SideMenu__gameDetails">
          {name},
          <br/> Chapter 2
        </div>
        <div className="SideMenu__playSection">
          <div className="SideMenu__playSection--timeLeft">Time left in chapter: 3mins</div>
          <div className="SideMenu__playSection--playButton" style={{backgroundColor: "#FC684F"}}>
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

      </div>

      <hr />
      
      <div className="SideMenu__bottom">
        <div className="SideMenu__menuitems__item" >
          <SVG src="/side_menu/logout.svg" className="SideMenu__menuitems__icons"/>
          <Link to="/" className="SideMenu__menuitems__label" onClick={logoutUser}><span>Sign Out</span></Link>
        </div>
      </div>

      
      <div className="menu-bottom">
        <div className="menu-options">
        </div>
      </div>

    </div>
  );

  return (
    <div className="menu-wrapper">
      {['left'].map((anchor) => (
        <React.Fragment key={anchor}>
          <img src="/commons/home.svg" onClick={toggleDrawer(anchor, true)} className="menu-button" />
          <SwipeableDrawer
            anchor={anchor}
            open={state[anchor]}
            onClose={toggleDrawer(anchor, false)}
            onOpen={toggleDrawer(anchor, true)}
            className="menu-drawer"
            // containerStyle={{height: 'calc(100% - 64px)', top: 64}}
          >
            {list(anchor)}
          </SwipeableDrawer>
        </React.Fragment>
      ))}
    </div>
  );
}


 