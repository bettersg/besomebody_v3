import React from 'react'
import NavigateNextIcon from '@material-ui/icons/NavigateNext'
import { Box, Button, Divider, Typography } from '@material-ui/core'

//* Stylesheet
import "./style.scss"

const NextButton = (props) => {
    const { getStory } = props
    return (
        <Button
            className="next-button"
            endIcon={<NavigateNextIcon />}
            color="primary"
            fullWidth
            onClick={() => {
              getStory()
            }}
          >
            Next
        </Button>
    )
}

export default NextButton
