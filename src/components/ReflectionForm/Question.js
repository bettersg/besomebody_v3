import { useState } from 'react';
import { Typography, Box, TextField, Slider, RadioGroup, Radio, FormControlLabel } from '@material-ui/core';
import { makeStyles } from '@material-ui/core/styles';

import formatString from '../../helpers/formatString';

const useStyles = makeStyles(() => ({
  imageChoiceContainer: {
    display: 'flex',
    overflowX: 'scroll',
    '-ms-overflow-style': 'none', /* for Internet Explorer, Edge */
    'scrollbar-width': 'none', /* for Firefox */
    '&::-webkit-scrollbar': {
      display: 'none',
    },
  },
  imageChoice: {
    display: 'flex',
    flexDirection: 'column',
    cursor: 'pointer',
    alignItems: 'center',
    margin: '10px 0',
    marginRight: '10px',
  },
  imageChoiceImg: {
    boxSizing: 'content-box',
    borderRadius: '5px',
    height: '120px',
    marginTop: '2px',
    marginBottom: '10px',
  },
  imageChoiceImgSelected: {
    marginTop: 0,
    border: '2px solid red',
  },
}));

const Question = ({ question, value, onChange, context }) => {
  const classes = useStyles();
  const [answerLength, setAnswerLength] = useState(0);
  const CHARACTER_LIMIT = 1000;

  const body = formatString(question.body, context);

  const handleChange = (event) => {
    onChange(event.target.value);
  };

  switch (question.type) {
    case "MULTI_CHOICE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255)">
          <Typography variant="body1">
            <b>{body}</b>
          </Typography>
          <RadioGroup value={value} onChange={handleChange}>
            {question.choices.map(choice => (
              <FormControlLabel key={choice.body} value={choice.body} control={<Radio />} label={formatString(choice.body, context)}  />
            ))}
          </RadioGroup>
        </Box>
      );
    case "MULTI_CHOICE_IMAGE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255)">
          <Typography variant="body1">
            <b>{body}</b>
          </Typography>
          <Box className={classes.imageChoiceContainer}>
            {question.choices.map(choice => (
              <Box className={classes.imageChoice}>
                <img
                  className={value === choice.body
                    ? `${classes.imageChoiceImg} ${classes.imageChoiceImgSelected}`
                    : classes.imageChoiceImg}
                  alt={formatString(choice.body, context)}
                  src={choice.image_url}
                  onClick={() => handleChange({
                    target: { value: choice.body }
                  })}
                />
                <b>{formatString(choice.body, context)}</b>
              </Box>
            ))}
          </Box>
        </Box>
      );
    case "LIKERT_SCALE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255)">
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
      return (
        <Box p={2} bgcolor="rgba(255,255,255)">
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
    case "OPEN_CHAR":
      return (
        <Box p={2} bgcolor="rgba(255,255,255)">
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
    default:
      return (
        <Box p={2} bgcolor="rgba(255,255,255)">
          <Typography variant="body1">
            Invalid question type provided.
          </Typography>
        </Box>
      );
  }
};

export default Question;
