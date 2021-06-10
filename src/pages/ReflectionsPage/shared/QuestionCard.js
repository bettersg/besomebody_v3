import { Card, Typography, Box, TextField } from '@material-ui/core';

const QuestionCard = ({ question, value, onChange }) => {
  return (
    <Card>
      <Box p={2}>
        <Typography variant="body1">
          Has something like this happened to you or someone you know?
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
    </Card>
  );
};

export default QuestionCard;