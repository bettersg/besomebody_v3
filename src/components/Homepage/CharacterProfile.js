import React from "react";
import {
  makeStyles,
  ThemeProvider,
  createMuiTheme
} from "@material-ui/core/styles";
import Avatar from "@material-ui/core/Avatar";
import Typography from "@material-ui/core/Typography";
import Grid from "@material-ui/core/Grid";
import Paper from '@material-ui/core/Paper';
import { isClassExpression } from "typescript";

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

export default function CharacterProfile(props) {
  const classes = useStyles();
  const { userInfo } = props;

  return (
    <ThemeProvider theme={theme}>
        <div className={classes}>
        <Paper> 
          <div style={{ display: "flex", justifyContent: "center" }}>
            <Grid>
                <Avatar className={classes.large}/>
                <Typography variant="subtitle1">My Name</Typography>
                <Typography variant="subtitle1">My Desc</Typography>
            </Grid>
           </div>
           <Grid container spacing={3}>
            <Grid item xs={4} alignItems="center">
              <div style={{ display: "flex", justifyContent: "center"}}>
              <Typography>3 Persona</Typography>
              <Typography>15 Outcomes</Typography>
              <Typography>8 Chapters</Typography>
              </div>
            </Grid>
           </Grid>
        

          </Paper>
        </div>
    </ThemeProvider>
  );
}