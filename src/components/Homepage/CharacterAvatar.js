import React from "react";
import {
  makeStyles,
  ThemeProvider,
  createMuiTheme
} from "@material-ui/core/styles";
import Avatar from "@material-ui/core/Avatar";
import Typography from "@material-ui/core/Typography";
import Button from "./CharacterButton";
import "./style.css"; 

const useStyles = makeStyles((theme) => ({
  large: {
    width: theme.spacing(10),
    height: theme.spacing(10)
  }
}));

const theme = createMuiTheme({
  overrides: {
    MuiTypography: {
      subtitle1: {
        fontSize: [14, "!important"],
        fontWeight: 600, 
        marginTop: "10px",
      }, 
      subtitle2: {
        fontSize: [11, "!important"],
        color: "grey", 
        marginBottom: "5px", 
      }
    }
  }
});

export default function ImageAvatars(props) {
  const classes = useStyles();
  const { personaInfo } = props;

  return (
    <ThemeProvider theme={theme}>
      <div className={classes.root}>
        <div style={{ display: "flex", justifyContent: "center" }}>
          <Avatar
            alt={personaInfo.alt}
            src={personaInfo.src}
            className={classes.large}
            style={{zIndex: 0}}
          />
        </div>
        <Typography variant="subtitle1">{personaInfo.name}</Typography>
        <Typography variant="subtitle2">{personaInfo.description}</Typography>
        
        {personaInfo.buttonShow == true ? 
          <Button buttonText="CONTINUE" /> :
          null
        }
      </div>
    </ThemeProvider>
  );
}
