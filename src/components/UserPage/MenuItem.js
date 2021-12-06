import { makeStyles } from "@material-ui/core/styles";
import { Grid, Fab, Box, Typography } from "@material-ui/core";
import { useParams, Link , useHistory } from "react-router-dom";

const useStyles = makeStyles ({
    root: {
        padding: "22px 24px", 
        background: "white", 
        display: "flex", 
        alignItems: "center",
        justifyContent: "space-between",  
        marginBottom: 2, 
    }, 
    leftSide: {
        display: "flex", 
        alignItems: "center",
    }
})

export const MenuItem = ({logo, name, description, editRedirect}) => {
    const classes = useStyles();

    return (
        <div className={classes.root}>
            <div className={classes.leftSide}>
                <img src={logo} height="23px" style={{marginRight:24}}/>
                <div>
                    <Typography style={{fontWeight:700}}>{name}</Typography>
                    {description ? <Typography style={{color: "#6C70DD"}}>{description}</Typography> : null}
                </div>

            </div>
            {editRedirect ? <Link to={editRedirect} style={{textDecoration: "none"}}><Typography style={{color: "#664EFC", fontWeight: 600, alignSelf: "right"}}>Edit</Typography></Link> : null}
        </div>
    )
}