import React from 'react';
import clsx from 'clsx';
import { makeStyles } from '@material-ui/core/styles';
import { Avatar } from '@material-ui/core';
import SwipeableDrawer from '@material-ui/core/SwipeableDrawer';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import HomeIcon from '@material-ui/icons/Home';

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
  const [state, setState] = React.useState({
    left: false,
    
  });

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
        <Avatar alt="Remy Sharp" src="/static/images/avatar/1.jpg" className="menu-avatar" />
        username
      </div>
      <div className="menu-description">
        <div>
          <div>You’re 48% through</div>
          <div className="chapter-num">Nadia, Chapter 2</div>
          <div className="resume"> Resume Game </div>
        </div>
        <div>
          <ArrowForwardIosIcon className="arrow-icon"/>
        </div>

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
          <img onClick={toggleDrawer(anchor, true)} src="/common/home.svg" className="menu-button" />
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
