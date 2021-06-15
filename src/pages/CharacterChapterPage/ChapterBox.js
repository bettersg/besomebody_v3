import React, { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'

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
import { useInkContext } from '../../contexts/InkContext'

import { CHARACTER_MAP } from '../../models/storyMap'
import NadiaJson from '../../stories/nadid.ink.json'

import "./style.css"; 

const useStyles = makeStyles({
    root: {
        width: "95%",
        borderRadius: 10,
        textAlign: "left", 
        marginBottom: "10px", 
    },
});


const getInkJson = (nameParam) => {
    switch (nameParam) {
      case 'nadid': 
      case 'nadia': {                
        return {
          inkJson: NadiaJson,
          characterId: 1,
          chapterId: 1,
        }
      }
      case 'aman': {
        const aman = CHARACTER_MAP.find((story) => story.id === 2)
        const amanChapter1 = aman.chapters.find((chapter) => chapter.id === 1)
        const json = aman.jsonFile
        return {
          inkJson: json,
          characterId: aman.id,
          chapterId: amanChapter1.id,
        }
      }
      default: {
        return null
      }
    }
  }

export default function ChapterBox(props) {
    const classes = useStyles();
    const { chaptDetails, total } = props
    

     // ==============================================================
    // Get name param from the route path
    // ==============================================================
    const { name } = useParams()

    // ==============================================================
    // Get the ink json file, character id, and chapter id
    // ==============================================================
    const { inkJson, characterId, chapterId } = getInkJson(name)

    // ==============================================================
    // Get the useInk hook initialiser from the context, and other variables if needed
    // ==============================================================
    const {
        // useInk hook initialiser
        initialiseUseInkHook,

        // States
        paragraphs,
        specialTags,
        currentKnot,
        startStoryFrom,
        
    } = useInkContext()

    // ==============================================================
    // Initialise the useInk hook within a useEffect to prevent multiple instances of initialising
    // ==============================================================
    useEffect(() => {
        initialiseUseInkHook(inkJson, characterId, chapterId)
    }, [])

    

    console.log(useInkContext());


    var rows = []; 
    for (var j = 0; j < chaptDetails.endings.length; j++) {
        rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
    }
  
    return (
        <Card className={classes.root} key={chaptDetails.number}>
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
                        <span className="chaptText" style={{marginLeft:"5px"}}>XXX of {chaptDetails.endings.length} endings unlocked</span>
                    </CardContent>
                </Grid>
                <CardActions>
                    {chaptDetails.replay == true ? 
                        <Button size="small" variant="outlined" className="chaptBtnReplay">
                            REPLAY
                        </Button> :
                        <Button size="small" variant="contained" className="chaptBtn" onClick={() => startStoryFrom('whatsapp')}>
                            PLAY
                        </Button>
                    }
                </CardActions>

            </Grid>
        </Card>
    );
}


  /* TODO number of endings unlocked needs to be pulled from the player save data, not from the story data */
    // for (var i = 0; i < chaptDetails.endingUnlocked; i++) {
    //     rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#999999", marginRight: 1}}/>);
    // }
    // for (var j = 0; j < chaptDetails.endingAvail - chaptDetails.endingUnlocked; j ++) {
    //     rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
    // }
