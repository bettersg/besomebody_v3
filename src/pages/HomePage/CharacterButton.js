import React from "react";
import {
  createMuiTheme,
  withStyles,
  makeStyles,
  ThemeProvider
} from "@material-ui/core/styles";
import Button from "@material-ui/core/Button";
import { green } from "@material-ui/core/colors";
import { Link } from 'react-router-dom';

const useStyles = makeStyles((theme) => ({
  margin: {
    // margin: theme.spacing(1)
  }
}));

const theme = createMuiTheme({
  palette: {
    primary: green
  }, 
  MuiButton: {
    root: {
      marginTop: "20px", 
    }, 
  }
});

export default function CharacterButton(props) {
  const classes = useStyles();

  return (
    <div>
      <ThemeProvider theme={theme}>
        <Link to={props.link} style={{ textDecoration: 'none' }}>
          <Button size="small" variant="contained" color="primary" className={classes.margin} style={{zIndex: 0}}>
            {props.buttonText}
          </Button>
        </Link>
      </ThemeProvider>
    </div>
  );
}
