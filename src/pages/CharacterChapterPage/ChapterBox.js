import React from 'react';
import { 
    makeStyles, 
    ThemeProvider,
    createMuiTheme 
} from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import Grid from '@material-ui/core/Grid';
import FiberManualRecordIcon from '@material-ui/icons/FiberManualRecord';
import { Link } from 'react-router-dom'
import useInk from '../../lib/Ink/useInk'
import NadidInk from '../../stories/nadid.ink.json' // todo: remove this 


import "./style.css"; 

const useStyles = makeStyles({
    root: {
        width: "95%",
        borderRadius: 10,
        textAlign: "left", 
        marginBottom: "10px", 
    },
});

export default function ChapterBox(props) {
    const classes = useStyles();
    const { chaptDetails, total } = props

    const {
        // States
        isStoryStarted,        
        hasSavedState,
    
        // Methods        
        resetStory,
        startStoryFrom,
        loadSavedStory,
        resetSavedStory,
      } = useInk(NadidInk, 1,1) // TODO: convert this from hardcoded to pulled from storymap where params are : ink file, character id , chapter id

    var rows = []; 

    /* TODO number of endings unlocked needs to be pulled from the player save data, not from the story data */
    // for (var i = 0; i < chaptDetails.endingUnlocked; i++) {
    //     rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#999999", marginRight: 1}}/>);
    // }
    // for (var j = 0; j < chaptDetails.endingAvail - chaptDetails.endingUnlocked; j ++) {
    //     rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
    // }
    for (var j = 0; j < chaptDetails.endings.length; j ++) {
        rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
    }

    return (
        <Card className={classes.root}>
            <Grid container>
                <Grid item xs={8}>
                    <CardContent> {/* TODO: this needs to be pulled from the player save data, not from the story*/}
                        {chaptDetails.new == true ? 
                            <Typography variant="overline" className="newChapt">
                                NEW
                            </Typography> : 
                            null
                        }
                        <span className="chaptText">Chapter {chaptDetails.number} of {total}</span>

                        <Typography className="chaptTitle">
                            {chaptDetails.title}
                        </Typography>
                        <Typography variant="body2">
                            {chaptDetails.summary}
                        </Typography>
                        {rows}
                        <span className="chaptText" style={{marginLeft:"5px"}}>1 of {chaptDetails.endings.length} endings unlocked</span>
                    </CardContent>
                </Grid>
                <CardActions> {/* TODO: this needs to be pulled from the player save data, not from the story*/}
                    {chaptDetails.completed == true ? 
                        <Button size="small" variant="outlined" className="chaptBtnReplay">
                            REPLAY
                        </Button> :
                        <Button size="small" variant="contained" className="chaptBtn"  onClick={() => startStoryFrom('nadid_chapter6')}>
                            PLAY
                        </Button> /* this doesn't work */
                    }

                </CardActions>

            </Grid>
        </Card>
    );
}
