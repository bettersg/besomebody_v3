import React from 'react'
import { Box, Divider, Typography } from '@material-ui/core'

const InkParagraphs = (props) => {
  const { paragraphs } = props

  const elementRef = React.useRef()

  React.useEffect(() => {
    elementRef.current.scrollIntoView({
      behavior: 'smooth',
    })
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [paragraphs])

  return (
    <>
      <Divider />
      <Box height={300} width="100%" overflow="scroll">
        {paragraphs.map((step) => {
          const usePrimaryColor = step.tags.includes('Dan')

          return (
            <Typography color={usePrimaryColor ? 'primary' : 'textSecondary'}>
              {step.text}
            </Typography>
          )
        })}
        <div ref={elementRef} />
      </Box>
      <Divider />
    </>
  )
}

export default InkParagraphs
