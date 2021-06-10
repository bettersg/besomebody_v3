import { Typography, Box, TextField, Slider, RadioGroup, Radio, FormControlLabel } from '@material-ui/core';

const Question = ({ question, value, onChange }) => {
  switch (question.type) {
    case "MULTI_CHOICE":
      return (
        <Box p={2} bgcolor="white">
          <Typography variant="body1">
            {question.body}
          </Typography>
          <RadioGroup>
            {question.choices.map(choice => (
              <FormControlLabel value={choice.body} control={<Radio />} label={choice.body} />
            ))}
          </RadioGroup>
        </Box>
      );
    case "LIKERT_SCALE":
      return (
        <Box p={2} bgcolor="white">
          <Typography variant="body1">
            {question.body}
          </Typography>
          <Box mt={2}>
            <Box display="flex" justifyContent="space-between">
              <Box>
                <Typography variant="body1">
                  {question.leftChoice.body}
                </Typography>
              </Box>
              <Box>
                <Typography variant="body1">
                  {question.rightChoice.body}
                </Typography>
              </Box>
            </Box>
            <Slider />
          </Box>
        </Box>
      );
    case "OPEN":
      return (
        <Box p={2} bgcolor="white">
          <Typography variant="body1">
            {question.body}
          </Typography>
          <Box mt={2}>
            <TextField
              value={value}
              onChange={onChange}
              variant="filled"
              placeholder="Enter your answer here"
              required
              fullWidth
              multiline
              InputProps={{ disableUnderline: true }}
            />
          </Box>
        </Box>
      );
    default:
      return (
        <Box p={2} bgcolor="white">
          <Typography variant="body1">
            Invalid question type provided.
          </Typography>
        </Box>
      );
  }
};

export default Question;