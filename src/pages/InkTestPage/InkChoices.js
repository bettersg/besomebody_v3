import React from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Typography } from '@material-ui/core'

const InkChoices = (props) => {
  const { choices, selectChoice } = props

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
            onClick={() => selectChoice(choice.index)}
          >
            <Typography variant="caption">{choice.text}</Typography>
          </Button>
        </Box>
      ))}
    </Box>
  )
}

InkChoices.propTypes = {
  choices: PropTypes.array,
  selectChoice: PropTypes.func,
}

export default InkChoices
