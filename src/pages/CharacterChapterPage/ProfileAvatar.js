import React from "react";
import {
  makeStyles,
  ThemeProvider,
  createMuiTheme
} from "@material-ui/core/styles";
import Avatar from "@material-ui/core/Avatar";
import Typography from "@material-ui/core/Typography";

const useStyles = makeStyles((theme) => ({
    large: {
        width: theme.spacing(12),
        height: theme.spacing(12), 
    }, 
    root: {
        margin: "20px", 
    }
}));

const theme = createMuiTheme({
    overrides: {
        MuiTypography: { 
            subtitle1: {
                fontSize: [15, "!important"],
                fontWeight: 600, 
                marginTop: "10px",
            }, 
            subtitle2: {
                color: "grey", 
            }
        }
    }
});

export default function ProfileAvatar(props) {
    const classes = useStyles();
    const { avatarInfo } = props;

    return (
        <ThemeProvider theme={theme}>
            <div className={classes.root}>
                <div style={{ display: "flex", justifyContent: "center" }}>
                <Avatar
                    alt={avatarInfo.name}
                    src={avatarInfo.profileImage}
                    className={classes.large}
                    style={{zIndex: 0}}
                />
                </div>
                <Typography variant="subtitle1">{avatarInfo.name}</Typography>
                <Typography variant="subtitle2">{avatarInfo.description}</Typography>
                
            </div>
        </ThemeProvider>
    );
}
