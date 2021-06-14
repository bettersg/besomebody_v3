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
import Box from '@material-ui/core/Box';
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

export default function PlayerProfile(props) {
  const classes = useStyles();
  const { userInfo } = props;
  console.log(userInfo)

  // TO-DO: to pass number of persona, outcomes and chapters as props from user file save
  // TODO : fix the userInfo. firebase currentUser does not pass the profile fields properly.
  return (
    <ThemeProvider theme={theme}>
        <div className={classes}>
        <Paper> 
          <Box>
          <div style={{ display: "flex", justifyContent: "center" }}>
            <Grid>
                <Avatar className={classes.large}/>
                <Typography variant="subtitle1">Name: {userInfo.username}</Typography>
                <Typography variant="subtitle2">My demographics:  {userInfo.race}  </Typography>
            </Grid>
           </div>
           <Grid container spacing={3}>
            <Grid item xs={4} style={{align:"center"}}>
              <Typography>3</Typography> 
              <Typography>Persona</Typography>
            </Grid>    
            <Grid item xs={4} style={{align:"center"}}>
              <Typography>15</Typography>
              <Typography>Outcomes</Typography>
            </Grid>
            <Grid item xs={4} style={{align:"center"}}>
              <Typography>8</Typography>  
              <Typography>Chapters</Typography>             
            </Grid>
           </Grid>
           </Box>
          </Paper>
        </div>
    </ThemeProvider>
  );
}