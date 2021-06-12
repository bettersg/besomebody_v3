import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import BottomNavigation from '@material-ui/core/BottomNavigation';
import Button from '@material-ui/core/Button';
import "./style.css"; 

export default function SimpleBottomNavigation() {
  return (
    <BottomNavigation
      className="resumeButton"
      style={{marginBottom: 10}}
    >
        <Button variant="contained" className="profilePgBtn">
            RESUME STORY
        </Button>
    </BottomNavigation>
  );
}
