import React from 'react'
import NavigateNextIcon from '@material-ui/icons/NavigateNext'
import { Box, Button, Divider, Typography } from '@material-ui/core'

//* Stylesheet
import "./style.scss"

const NextButton = (props) => {
    const { getStory } = props
    return (
      <div 
      className="next-button" 
      onClick={() => {
        getStory()
      }}
      >
      </div>
    )
}

export default NextButton
