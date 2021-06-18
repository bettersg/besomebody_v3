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
import NadiaInk from '../../stories/nadid.ink.json'
import AmanInk from '../../stories/aman_chapter1.ink.json'

import WhatsApp from '../WhatsappPage/Whatsapp'
import Scene from '../ScenePage/Scene'
import DefaultInk from '../DefaultInk'
import Survey from '../SurveyPage/Survey'


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
          inkJson: NadiaInk,
          characterId: 1,
          chapterId: 1,
        }
      }
      case 'aman': {
         
        return {
          inkJson: AmanInk,
          characterId: 1,
          chapterId: 1,
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
        currentParagraphs,
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

    // getUI

    console.log(useInkContext());


    var rows = []; 
    for (var j = 0; j < chaptDetails.endings.length; j++) {
        rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
    }


const getUi = ({ currentParagraphs, specialTags }) => {
    switch (specialTags.ui) {
      case 'scene': {
        return <Scene currentParagraphs={currentParagraphs} />
      }
      case 'whatsapp': {
        return <WhatsApp currentParagraphs={currentParagraphs} />
      }
      case 'survey': {
        // TODO: update this component
        return <Survey currentParagraphs={currentParagraphs} />
      }
  
      // case reflection  - return a reflection component with argument for survey id from ink
      // <Reflection getstory surveyid />
  
      case 'school': {
        return (
          // to remove school from nadia's story
          <Scene currentParagraphs={currentParagraphs} />
        )
      }
      default:
        return <DefaultInk currentParagraphs={currentParagraphs} />
    }
  }
    // const handleChapterStart = () => {
    //     startStoryFrom(chaptDetails.knotTag);
    //     getUi({
    //         currentParagraphs,
    //         specialTags,
    //       })
    // }
  
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
                    {chaptDetails.playable == false ? 
                        <Button size="small" variant="outlined" disabled >
                            Coming Soon
                        </Button> :
                        <Link to={"/story/" + name + "/" + chaptDetails.knotTag}><Button size="small" variant="contained" className="chaptBtn" >
                            PLAY
                        </Button></Link>
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
