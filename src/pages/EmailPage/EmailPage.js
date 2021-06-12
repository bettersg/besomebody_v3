import React, { useState } from 'react'
import {
  Box,
  Grid,
  Button,
  Container,
  Typography,
} from '@material-ui/core'
import {
    makeStyles,
    ThemeProvider,
    createMuiTheme
  } from "@material-ui/core/styles";
  import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
  import CloseIcon from '@material-ui/icons/Close';
  import AttachmentIcon from '@material-ui/icons/Attachment';
  import DeleteIcon from '@material-ui/icons/Delete';
  import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';
  import Divider from '@material-ui/core/Divider';
  import WifiIcon from '@material-ui/icons/Wifi';
  import SignalCellularAltIcon from '@material-ui/icons/SignalCellularAlt';
  import Battery90Icon from '@material-ui/icons/Battery90';


  import "./style.scss"; 


  const EmailPage = (props) => {
    return (
      <div>
        <div className="top-border">
          <Grid container>
            <div className="time">
              9:41
            </div>
            <div className="misc-icons">
              <SignalCellularAltIcon size="small"/>
              <WifiIcon size="small"/>
              <Battery90Icon size="small"/>
            </div>
           
          </Grid>
          </div>
          
        
        <Box border={1}>
        <div className="email-wrapper">
          <div className="email-header">
            <Grid container>
              <div className="arrow-back">
              <ArrowBackIosIcon/>
              </div>
              <div className="email-compose">
              Compose
              </div> 
              <div className="close-icon">
              <CloseIcon/>
              </div>
            </Grid>
          </div>

          <div className="email-content">
              <div className="email-from">
                <Grid container>
                From: email@mail.com
                <div className="arrow-drop">
                  <ArrowDropDownIcon/>
                </div>
                </Grid>
              </div>
              <Divider/>
              <div className="email-to">
              To: email@mail.com
              </div>
              <Divider/>
              <div className="email-subject">
              Subject: Subject
              </div>
              <Divider/>
              <div className="email-body">
              Compose email
              </div>
          </div>

          <div className="email-actions">
            <Grid container>
            <div className="send-button"> 
              <Button variant="contained" color="primary" size="large">
                Send
              </Button>
            </div>
            <div className="attachment-delete">
            <AttachmentIcon fontSize="large" />
            <DeleteIcon fontSize="large"/>
            </div>
            </Grid>
          </div>
          
        </div>
        </Box>
      </div>
    )
}

export default EmailPage; 