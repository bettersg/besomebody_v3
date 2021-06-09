import React from 'react';
import { createMuiTheme, makeStyles, ThemeProvider } from '@material-ui/core/styles';
import BottomNavigation from '@material-ui/core/BottomNavigation';
import BottomNavigationAction from '@material-ui/core/BottomNavigationAction';
import { FiberManualRecord } from '@material-ui/icons';
import FavoriteIcon from '@material-ui/icons/Favorite';
import LocationOnIcon from '@material-ui/icons/LocationOn';
import Paper from '@material-ui/core/Paper';
import { ImportantDevices } from '@material-ui/icons';
import "./style.css"; 

const useStyles = makeStyles((theme) => ({
  root: {
    
  },
}));    

export default function SimpleBottomNavigation() {
  const classes = useStyles();
  const [value, setValue] = React.useState(0);

    return (
        
            <BottomNavigation
                value={value}
                onChange={(event, newValue) => {
                    setValue(newValue);
                }}
                showLabels
                className="bottomNav"
                style={{zIndex: 1}}
            >
                <BottomNavigationAction label="Stories" icon={<FiberManualRecord />} className="navBarIcons"/>
                <BottomNavigationAction label="Library" icon={<FiberManualRecord />} className="navBarIcons"/>
                <BottomNavigationAction label="Community" icon={<FiberManualRecord />} className="navBarIcons"/>
                <BottomNavigationAction label="Profile" icon={<FiberManualRecord />} className="navBarIcons"/>
            </BottomNavigation>
       
    );
}

// The bottom navigation used to be wrapped in <ThemeProvider> but I removed that as we are not using the ThemeProvider in this implementation. If we decide to use ThemeProvider then need to make game-wide changes.