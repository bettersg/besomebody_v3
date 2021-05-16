import React from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Typography } from '@material-ui/core'

const InkChoices = (props) => {
  const { choices, setChoice } = props

  return (
    <Box
      my={8}
      display="flex"
      justifyContent="space-around"
      hidden={choices.length === 0}
    >
      {choices.map((choice) => (
        <Box mx={1} key={choice.text}>
          <Button
            variant="outlined"
            color="primary"
            onClick={() => setChoice(choice.index)}
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
  setChoice: PropTypes.func,
}

export default InkChoices
