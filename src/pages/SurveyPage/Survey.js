import React, { useEffect, useState } from 'react'
import { Box, Button, Grid, TextField, Typography } from '@material-ui/core'
import { Controller, useForm } from 'react-hook-form'
import { useSnackbar } from '../../contexts/SnackbarContext'
import { useInkContext } from '../../contexts/InkContext'

const Survey = (props) => {
  const { currentParagraphs } = props
  const { getStory } = useInkContext()

  // Snackbar Context
  const { setSnackbar } = useSnackbar()

  const [isLoading, setIsLoading] = useState(false)
  // get the survey id from special tags

  // Init form
  const defaultValues = {
    name: '',
    email: '',
  }
  const {
    formState: { isSubmitting },
    handleSubmit,
    control,
    reset,
  } = useForm({
    defaultValues,
  })

  useEffect(() => {
    if (isSubmitting) {
      reset(defaultValues)
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [isSubmitting])

  const beforeSubmit = async (values) => {
    const { name, email } = values
    try {
      setIsLoading(true)
      // TODO: use real submit function
      //   await submitSurvey(name, email)
      getStory()
    } catch (err) {
      setSnackbar({
        message: `Failed to submit survery: ${err.message}`,
        open: true,
        type: 'error',
      })
    }
    setIsLoading(false)
  }

  return (
    <Box mx={2}>
      {/* TODO: Update UI and form fields */}
      {currentParagraphs.map((paragraph) => {
        return (
          <Box mb={2}>
            <Typography variant="h4">{paragraph.text}</Typography>
          </Box>
        )
      })}

      <form onSubmit={handleSubmit(beforeSubmit)}>
        <Grid container spacing={1}>
          <Grid item xs={2}>
            <Typography variant="body1">Name:</Typography>
          </Grid>
          <Grid item xs={10}>
            <Controller
              as={TextField}
              control={control}
              name="name"
              placeholder="Enter your name here"
              required
              fullWidth
            />
          </Grid>
          <Grid item xs={2}>
            <Typography variant="body1">Email:</Typography>
          </Grid>
          <Grid item xs={10}>
            <Controller
              as={TextField}
              control={control}
              name="email"
              type="email"
              placeholder="Enter your email here"
              required
              fullWidth
            />
          </Grid>
        </Grid>

        <Box mt={2} display="flex" justifyContent="center">
          <Button
            variant="contained"
            color="primary"
            type="submit"
            size="small"
            disabled={isSubmitting || isLoading}
          >
            Submit Survey
          </Button>
        </Box>
      </form>
    </Box>
  )
}

export default Survey
