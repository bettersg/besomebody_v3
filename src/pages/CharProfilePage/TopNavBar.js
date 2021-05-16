import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Button from '@material-ui/core/Button';
import IconButton from '@material-ui/core/IconButton';
import ArrowBackIcon from '@material-ui/icons/ArrowBack';
import { Link } from 'react-router-dom';

const useStyles = makeStyles((theme) => ({
    backBtn: {
        marginRight: theme.spacing(2),
        color: "grey", 
    },
    toolBar: {
        backgroundColor: "white", 
    }
}));  

export default function ButtonAppBar() {
    const classes = useStyles();

    return (
        <div className="topNavBar">
            <AppBar position="static" elevation={0}>
                <Toolbar className={classes.toolBar}>
                    <IconButton edge="start" className={classes.backBtn}>
                        <Link to="/">
                            <ArrowBackIcon />
                        </Link>
                    </IconButton>
                </Toolbar>
            </AppBar>
        </div>
    );
}
