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
  import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
  import CloseIcon from '@material-ui/icons/Close';
  import AttachmentIcon from '@material-ui/icons/Attachment';
  import DeleteIcon from '@material-ui/icons/Delete';
  import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';


  //import "./style.scss"; 


  const EmailPage = (props) => {
    return (
      <div className="email-wrapper">
        <div className="email-header">
          <div className="email-compose">
          <ArrowBackIosIcon/>
          Compose
          </div> 
          <div className="close-icon">
          <CloseIcon/>
          </div>
        </div>

        <div className="email-content">
            <div className="email-from">
            From
            <ArrowDropDownIcon/>
            </div>
            <div className="email-to">
            To
            </div>
            <div className="email-subject">
            Subject
            </div>
            <div className="email-body">
            Compose email
            </div>
        </div>

        <div className="email-actions">
          <div className="send-button"> 
            <Button variant="contained" color="primary">
              Send
            </Button>
          </div>
          <div className="attachment-delete">
          <AttachmentIcon/>
          <DeleteIcon/>
          </div>
          
        </div>
      </div>
      
    )
}

export default EmailPage; 