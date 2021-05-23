import React, { useState } from 'react'
import {
  Box,
  Button,
  Container,
  Typography,
} from '@material-ui/core'
import {
    makeStyles,
    ThemeProvider,
    createMuiTheme
  } from "@material-ui/core/styles";

const useStyles = makeStyles((theme) => ({
    root: {
      alignItems: "center",
      justifyContent: "center"
    },
    large: {
      width: theme.spacing(15),
      height: theme.spacing(15),
      display: "flex",
      justifyContent: "center"
    }
  }));
  
  const theme = createMuiTheme( {
    overrides: { 
      MuiTypography: {
        subtitle1: {
          fontSize: [15, "!important"],
          fontWeight: 600
        },
        subtitle2: {
          fontSize: [12, "!important"],
          marginBottom: "3%", 
          marginLeft: "20%", 
          marginRight: "20%", 
        }, 
      }
    }
  });

  const EmailPage = (props) => {
    return (
        <div className="insta-wrapper">
            <div className="insta-heading">
                <div className="insta-title">Instagram</div>
                <div>
                    <img src="instagram/header-add.png" className="social-icons"/>
                    <img src="instagram/header-heart.png" className="social-icons"/>
                    <img src="instagram/header-send.png" className="social-icons"/>
                </div>
            </div>
        </div>
    )
}

export default EmailPage; 