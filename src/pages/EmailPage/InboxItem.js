import { Box, Fade, Grid, Typography } from '@material-ui/core'
import './style.scss'

export const InboxItem = ({from, profileIcon, subject, emailPreview, storyline}) => {
    return (
        <Box className={`InboxItem`}>
            {profileIcon?<img src={"/images/"+profileIcon} className="InboxItem--image" />:<img src="/email_page/noprofileImg.png" className="InboxItem--image" />}
            
            {storyline?
                <Box>
                    <Typography className={`InboxItem--from`}>{from}</Typography>
                    <Typography variant="subtitle" className={`InboxItem--subject`}>{subject}</Typography><br/>
                    <Typography variant="subtitle" className={`InboxItem--preview`}>{emailPreview}</Typography>
                </Box>
            :
                <Box>
                    <Box className={`InboxItem__nonStory`} style={{width: "123px"}}></Box>
                    <Box className={`InboxItem__nonStory`} style={{width: "170px"}}></Box>
                    <Box className={`InboxItem__nonStory`} style={{width: "246px"}}></Box>
                </Box>
            }
        </Box>
    )
}