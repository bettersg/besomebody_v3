import React, { useState, useEffect } from 'react';
import { useParams , Link } from 'react-router-dom'

import clsx from 'clsx';
import { makeStyles } from '@material-ui/core/styles';
import { Avatar } from '@material-ui/core';
import SwipeableDrawer from '@material-ui/core/SwipeableDrawer';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';

import { useAuth } from '../../../contexts/AuthContext'
import { getDbUser } from '../../../models/userModel.js';


import "./style.scss"; 

const useStyles = makeStyles({
  list: {
    width: 250,
  },
  fullList: {
    width: 'auto',
  },
});

export default function SwipeableTemporaryDrawer() {
  const classes = useStyles();
  
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
  const { name  } = useParams()
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


  // the actual menu
  const list = (anchor) => (
    <div
      className={clsx(classes.list, {
        [classes.fullList]: anchor === 'top' || anchor === 'bottom',
      })}
      id="menu-items"
      role="presentation"
      onClick={toggleDrawer(anchor, false)}
      onKeyDown={toggleDrawer(anchor, false)}
    >
      <div className="menu-username">
      <Avatar alt={userFromDb?.username} src="/static/images/avatar/1.jpg" className="menu-avatar" />
        {userFromDb?.username}
      </div>
      <div className="menu-description">
        <div>
          <div>You’re currently playing:</div>
          <div className="chapter-num">{name.toUpperCase()} </div>          
        </div>
        <div>
          <ArrowForwardIosIcon className="arrow-icon"/>
        </div>
      </div>
      <hr/>
      <div className="menu-options">
       <Avatar alt="C" src="/" style={{marginRight:"15px"}}/>  <Link to="/"><span>Character Selection</span></Link>
      </div>
      <div className="menu-options">
        <Avatar alt="C" src="/" style={{marginRight:"15px"}}/>  <Link to={"/chapters/" + name}><span>Chapter Menu</span></Link>
      </div>
      <div className="menu-options">
        <Avatar alt="H" src="/" style={{marginRight:"15px"}}/> <span>Help</span>
      </div>
      <div className="menu-options">
        <Avatar alt="L" src="/" style={{marginRight:"15px"}}/> <span>Library</span>
      </div>
      <div className="menu-bottom">
        <hr/>
        <div className="menu-options">
          <Avatar alt="A" src="/" style={{marginRight:"15px"}}/> <Link to={"/user/" + userFromDb?.id}><span>Account Settings</span></Link>
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
            containerStyle={{height: 'calc(100% - 64px)', top: 64}}
          >
            {list(anchor)}
          </SwipeableDrawer>
        </React.Fragment>
      ))}
    </div>
  );
}


 