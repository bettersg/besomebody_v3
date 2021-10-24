import { Typography, Box, TextField, Slider, RadioGroup, Radio, FormControlLabel } from '@material-ui/core';
import React, { useState, useEffect } from 'react';
import { getDbReflectionResponsesChoiceCount } from '../../../models/counterModel';
import formatString from '../../../helpers/formatString';

const Question = ({ question, value, onChange, reflectionId, context }) => {

  const [counts, setCounts] = useState(null);
  const [answerLength, setAnswerLength] = useState(0);

  useEffect(() => fetchCounts(), []);

  async function fetchCounts() {
    if(question.type!=="MULTI_CHOICE"){return;}
    let results = await Promise.all(question.choices.map(async (choice) => {
      return getDbReflectionResponsesChoiceCount(reflectionId,question.id,choice.id);
    }));
    setCounts(results);
  }

  const body = formatString(question.body, context);

  const handleChange = (event) => {
    onChange(event.target.value);
  };

  switch (question.type) {
    case "MULTI_CHOICE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{body}</b>
          </Typography>
          <RadioGroup value={value} onChange={handleChange}>
            {question.choices.map((choice) => (
              <FormControlLabel key={choice.body} value={choice.body} control={<Radio />} label={formatString(choice.body, context)}  />
            ))}
          </RadioGroup>
        </Box>
      );
    case "LIKERT_SCALE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{body}</b>
          </Typography>
          <Box mt={2}>
            <Box display="flex" justifyContent="space-between">
              <Box>
                <Typography variant="body1">
                  {formatString(question.leftChoice.body, context)}
                </Typography>
              </Box>
              <Box>
                <Typography variant="body1">
                  {formatString(question.rightChoice.body, context)}
                </Typography>
              </Box>
            </Box>
            <Slider value={value || 50} onChange={(event, value) => onChange(value)} />
          </Box>
        </Box>
      );
    case "OPEN":
      const CHARACTER_LIMIT = 1000;
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{body}</b>
          </Typography>
          <Box mt={2}>
            <TextField
              value={value}
              onChange={(event) => { handleChange(event); setAnswerLength(event.target.value.length) }}
              variant="filled"
              placeholder="Please type here. If you do not wish to share, leave this blank."              
              helperText={`${answerLength}/${CHARACTER_LIMIT}`}
              fullWidth
              multiline
              rows={4}
              inputProps={{ maxLength: CHARACTER_LIMIT }}
              InputProps={{ disableUnderline: true }}
            />
          </Box>
        </Box>
      );
      case "GAP":
        return (
          <Box p={2} bgcolor="rgba(255,255,255,0.6)">
            <hr />
          </Box>
        );
    default:
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            Invalid question type provided.
          </Typography>
        </Box>
      );
  }
};

export default Question;
