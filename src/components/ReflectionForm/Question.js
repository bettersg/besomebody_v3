import { Typography, Box, TextField, Slider, RadioGroup, Radio, FormControlLabel } from '@material-ui/core';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles((theme) => ({
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
}))

const Question = ({ question, value, onChange }) => {
  const classes = useStyles();

  const handleChange = (event) => {
    onChange(event.target.value);
  };

  switch (question.type) {
    case "MULTI_CHOICE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{question.body}</b>
          </Typography>
          <RadioGroup value={value} onChange={handleChange}>
            {question.choices.map(choice => (
              <FormControlLabel key={choice.body} value={choice.body} control={<Radio />} label={choice.body}  />
            ))}
          </RadioGroup>
        </Box>
      );
    case "MULTI_CHOICE_IMAGE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{question.body}</b>
          </Typography>
          <Box className={classes.imageChoiceContainer}>
            {question.choices.map(choice => (
              <Box className={classes.imageChoice}>
                <img
                  className={value === choice.body
                    ? `${classes.imageChoiceImg} ${classes.imageChoiceImgSelected}`
                    : classes.imageChoiceImg}
                  alt={choice.body}
                  src={choice.image_url}
                  onClick={() => handleChange({
                    target: { value: choice.body }
                  })}
                />
                <b>{choice.body}</b>
              </Box>
            ))}
          </Box>
        </Box>
      );
    case "LIKERT_SCALE":
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{question.body}</b>
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
            <Slider value={value || 50} onChange={(event, value) => onChange(value)} />
          </Box>
        </Box>
      );
    case "OPEN":
      return (
        <Box p={2} bgcolor="rgba(255,255,255,0.6)">
          <Typography variant="body1">
            <b>{question.body}</b>
          </Typography>
          <Box mt={2}>
            <TextField
              value={value}
              onChange={handleChange}
              variant="filled"
              placeholder="Please type here. If you do not wish to share, leave this blank."              
              fullWidth
              multiline
              rows={4}
              InputProps={{ disableUnderline: true }}
            />
          </Box>
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
