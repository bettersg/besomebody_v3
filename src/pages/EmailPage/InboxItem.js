import { Box, Fade, Grid, Typography } from '@material-ui/core'
import './style.scss'

export const InboxItem = ({from, profileIcon, subject, emailPreview, storyline}) => {
    return (
        <Box className={`InboxItem`}>
            {profileIcon?<img src={profileIcon} className="InboxItem--image" />:<img src="/email_page/noprofileImg.png" className="InboxItem--image" />}
            
            <Box>
                <Typography className={`InboxItem--from${storyline?"": "--nonStoryline"}`}>{from}</Typography>
                <Typography variant="subtitle" className={`InboxItem--subject${storyline?"": "--nonStoryline"}`}>{subject}</Typography><br/>
                <Typography variant="subtitle" className={`InboxItem--preview${storyline?"": "--nonStoryline"}`}>{emailPreview}</Typography>
            </Box>
        </Box>
    )
}