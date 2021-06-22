import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom'

import clsx from 'clsx';
import { makeStyles } from '@material-ui/core/styles';
import { Avatar } from '@material-ui/core';
import SwipeableDrawer from '@material-ui/core/SwipeableDrawer';
import MenuIcon from '@material-ui/icons/Menu';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import { useAuth } from '../../../contexts/AuthContext'
import {getDbUser}  from '../../../models/userModel.js';

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
  const { name  } = useParams()

  const [state, setState] = React.useState({
    left: false,
    
  });

  const { currentUser } = useAuth()
  const [userFromDb, setUserFromDb] = useState(null)
  
	useEffect(() => {
	  const getUser = async () => {
		const user = await getDbUser(currentUser.id)
		return setUserFromDb(user)
	  }
  
	  getUser()
	}, [currentUser.id])

  const toggleDrawer = (anchor, open) => (event) => {
    if (event && event.type === 'keydown' && (event.key === 'Tab' || event.key === 'Shift')) {
      return;
    }

    setState({ ...state, [anchor]: open });
  };

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
          <div className="resume"> GET INFO FROM INK CONTEXT ON CHAPTER </div>
          <button>ON CLICK, SAVE GAME</button>
        </div>
        {/* <div>
          <ArrowForwardIosIcon className="arrow-icon"/>
        </div> */}

      </div>
      <hr/>
      <div className="menu-options">
        <Avatar alt="c" src="/" style={{marginRight:"15px"}}/> <span>Character Menu</span>
      </div>
      <div className="menu-options">
        <Avatar alt="c" src="/" style={{marginRight:"15px"}}/> <span>Help</span>
      </div>
      <div className="menu-options">
        <Avatar alt="c" src="/" style={{marginRight:"15px"}}/> <span>Library</span>
      </div>
      <div className="menu-bottom">
        <hr/>
        <div className="menu-options">
          <Avatar alt="c" src="/" style={{marginRight:"15px"}}/> <span>Library</span>
        </div>
      </div>

      {/* orginal */}
      {/* <List>
        {['Inbox', 'Starred', 'Send email', 'Drafts'].map((text, index) => (
          <ListItem button key={text}>
            <ListItemIcon>{index % 2 === 0 ? <InboxIcon /> : <MailIcon />}</ListItemIcon>
            <ListItemText primary={text} />
          </ListItem>
        ))}
      </List>
      <Divider />
      <List>
        {['All mail', 'Trash', 'Spam'].map((text, index) => (
          <ListItem button key={text}>
            <ListItemIcon>{index % 2 === 0 ? <InboxIcon /> : <MailIcon />}</ListItemIcon>
            <ListItemText primary={text} />
          </ListItem>
        ))}
      </List> */}
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
