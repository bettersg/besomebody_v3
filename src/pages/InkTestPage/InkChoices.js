import { Box, Button, Typography } from '@material-ui/core'
import React from 'react'

const InkChoices = (props) => {
  const { choices, handleSelectChoice } = props

  return (
    <Box
      my={8}
      display="flex"
      justifyContent="space-around"
      hidden={choices.length === 0}
    >
      {choices.map((choice) => (
        <Box mx={1}>
          <Button
            variant="outlined"
            color="primary"
            size="small"
            onClick={() => handleSelectChoice(choice.index)}
          >
            <Typography variant="caption">{choice.text}</Typography>
          </Button>
        </Box>
      ))}
    </Box>
  )
}

export default InkChoices
