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
    const { chaptDetails } = props
    var rows = []; 

    for (var i = 0; i < chaptDetails.endingUnlocked; i++) {
        rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#999999", marginRight: 1}}/>);
    }
    for (var j = 0; j < chaptDetails.endingAvail - chaptDetails.endingUnlocked; j ++) {
        rows.push(<FiberManualRecordIcon style={{fontSize:8, color: "#E5E5E5", marginRight: 1}}/>);
    }

    return (
        <Card className={classes.root}>
            <Grid container>
                <Grid item xs={8}>
                    <CardContent>
                        {chaptDetails.new == true ?
                            <Typography variant="overline" className="newChapt">
                                NEW
                            </Typography> : 
                            null
                        }
                        <span className="chaptText">Chapter {chaptDetails.startChapt} of {chaptDetails.endChapt}</span>

                        <Typography className="chaptTitle">
                            {chaptDetails.title}
                        </Typography>
                        {rows}
                        <span className="chaptText" style={{marginLeft:"5px"}}>{chaptDetails.endingUnlocked} of {chaptDetails.endingAvail} endings unlocked</span>
                    </CardContent>
                </Grid>
                <CardActions>
                    {chaptDetails.replay == true ? 
                        <Button size="small" variant="outlined" className="chaptBtnReplay">
                            REPLAY
                        </Button> :
                        <Button size="small" variant="contained" className="chaptBtn">
                            PLAY
                        </Button>

                    }

                </CardActions>

            </Grid>
        </Card>
    );
}
