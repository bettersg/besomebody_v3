import React, { useState, useEffect } from 'react';
import {
  Box,
  Button,
  Typography,
  Container,
  SwipeableDrawer,
} from '@material-ui/core'
import { ToggleButton, ToggleButtonGroup } from '@material-ui/lab'
import { getDbReflectionResponsesPaginated } from '../../../models/reflectionResponseModel';
import { getDbReflectionResponsesCounts } from '../../../models/counterModel';
import ChapterResponse from '../../ReflectionsPage/chapter/ChapterResponse';
import makeStyles from '@material-ui/core/styles/makeStyles'
import TuneIcon from '@material-ui/icons/Tune';
import PacmanLoader from 'react-spinners/PacmanLoader'
import InfiniteScroll from 'react-infinite-scroll-component';

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  paragraphWrapper: {
    backgroundColor: "white", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 
    overflow: "auto",
  },
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    bottom: 0, 

  },
  headerText: {
    fontSize: '2rem',
    fontWeight: 800,
    color: '#ffffff',
  },
  bottom: {
    bottom: 0,
    height: '20vh',
    position: 'absolute',
    marginLeft: 'auto',
    marginRight: 'auto',
    left: 0,
    right:0,
    textAlign: 'center',
    // display: 'flex',    
    // flexDirection: 'column',
    // alignItems: 'center',
  },
  container: {
    margin: 'auto',
    textAlign: 'center',    
    alignItems: "center",
    paddingTop: '10%',
    overflow: 'scroll',
    height: 600
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    marginBottom: '20px',
    background: '#664EFC',
    backgroundColor: '#664EFC',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  filterChaptBtn: {
    textTransform: 'none',
  },
  filterActionBtn: {
    fontWeight: 'bold',
    textTransform: 'none',
  },
  topText: {
    color: '#A7A9EB',
    fontSize: '0.9rem',
    fontWeight: '600',    
    marginBottom: 30,
  },
  mainText: {
    color: '#ffffff',
    fontSize: '1.1rem',
    fontWeight: '400',    
    marginBottom: 30,
  },
  link: {
    color: '#ffffff',
    fontSize: '0.8rem',
    fontWeight: '300',    
    marginBottom: 30,
    textTransform: "uppercase",
    textDecoration: 'none',
  },
}))

const chapterToReflectionIdMap = {
  nadia: { 1: 2, 2: 3, 3: 4 },
};
const reflectionIdToCharacterMap = {
  2: 'nadia',
  3: 'nadia',
  4: 'nadia',
}

const ReflectionResponsesStep = ({ reflectionId, next }) => {
  const [responses, setResponses] = useState(null);
  const [hasMore, setHasMore] = useState(true);
  const [lastDocSnapshot, setLastDocSnapshot] = useState(null);
  const [reflectionIds, setReflectionIds] = useState([reflectionId]);
  const [filterReflectionIds, setFilterReflectionIds] = useState([reflectionId]);
  const [count, setCount] = useState(null);
  const [isFilterDrawerOpen, setIsFilterDrawerOpen] = useState(false);
  const classes = useStyles();

  function handleFilterButtonClick(event, newFilterReflectionIds) {
    setFilterReflectionIds(newFilterReflectionIds);
  }

  function filterReset() {
    setFilterReflectionIds([reflectionId]);
  }

  function filterApply() {
    if (filterReflectionIds.length === 0) {
      // TODO: what if the user selects nothing? display an error? no-op? reset to original chapter?
      return;
    }
    setResponses(null);
    setHasMore(true);
    setLastDocSnapshot(null);
    setReflectionIds(filterReflectionIds);
  }

  const FilterDrawer = () => {
    const character = reflectionIdToCharacterMap[reflectionId];
    const reflectionIdMap = chapterToReflectionIdMap[character];
    return (
      <div role='presentation' onKeyDown={toggleFilterDrawer(false)}>
        <h1>Filter stories</h1>
        <h3>CHAPTERS</h3>
        <ToggleButtonGroup value={filterReflectionIds} onChange={handleFilterButtonClick}>
          {
            Object.entries(reflectionIdMap).map(([chapt, reflId]) =>
              <ToggleButton className={classes.filterChaptBtn} value={reflId}>
                Chpt {chapt}
              </ToggleButton>
            )
          }
        </ToggleButtonGroup>
        <br/>
        <ToggleButtonGroup>
          <ToggleButton className={classes.filterActionBtn} onClick={filterReset}>Reset</ToggleButton>
          <ToggleButton className={classes.filterActionBtn} onClick={filterApply}>Apply</ToggleButton>
        </ToggleButtonGroup>
      </div>
    );
  }

  async function fetchMoreResponses() {
    const LIMIT = 300;
    const { newResponses, newLastDocSnapshot } = await getDbReflectionResponsesPaginated({
      lastDocSnapshot,
      limit: LIMIT,
      reflectionIds: reflectionIds,
      questionId: 3,  // this is hardcoded to the "share your story textarea question"
    });
    if (newResponses.length < LIMIT) {
      setHasMore(false);
    }
    setResponses((prevResponses) => prevResponses === null ? newResponses : prevResponses.concat(newResponses));
    setLastDocSnapshot(newLastDocSnapshot);
  }

  async function fetchMoreResponsesIfNotOverflow() {
    const container = document.getElementById('reflectionsContainerId');
    if (container && container.scrollHeight > container.clientHeight) return;
    if (hasMore) await fetchMoreResponses();
  }

  async function fetchCount() {
    setCount(await getDbReflectionResponsesCounts(reflectionIds));
  }

  function toggleFilterDrawer(open) {
    function handler(event) {
      if (event && event.type === 'keydown' && (event.key === 'Tab' || event.key === 'Shift')) return;
      setIsFilterDrawerOpen(open);
    }
    return handler;
  }

  useEffect(() => fetchCount(), [reflectionIds]);
  useEffect(() => fetchMoreResponsesIfNotOverflow(), [hasMore, lastDocSnapshot, reflectionIds]);

  return (
    <React.Fragment key='bottom'>
      <SwipeableDrawer
        anchor={'bottom'}
        open={isFilterDrawerOpen}
        onClose={toggleFilterDrawer(false)}
        onOpen={toggleFilterDrawer(true)}
      >
        <FilterDrawer />
      </SwipeableDrawer>
      { responses === null
        ?
        <Box className={classes.background}>
          <PacmanLoader color="#e5e5e5" size={25} css={{ align: "center", top: "200px", left: "100px" }} />
        </Box>
        :
        <Box className={classes.background}>
          <Container className={classes.container} id={'reflectionsContainerId'}>
            <Typography className={classes.headerText}>Reflections from Others</Typography>
            <Typography variant="body2" color="error">{count || 0} players have completed these chapters</Typography>
            <Box>
              <InfiniteScroll
                dataLength={responses.length}
                next={fetchMoreResponses}
                hasMore={hasMore}
                loader={<PacmanLoader color="#e5e5e5" size={10} css={{ display: 'flex', left: '-15px', margin: 'auto', height: '30px' }} />}
                scrollableTarget={'reflectionsContainerId'}
              >
                {responses.map(response => (
                  response.answer.length > 5 && <ChapterResponse key={response.id} response={response} />
                ))}
              </InfiniteScroll>
            </Box>
          </Container>
          <Button className={classes.btn} onClick={toggleFilterDrawer(true)}><TuneIcon /></Button>
          <Button className={classes.btn} onClick={next}>Continue</Button>
        </Box>
      }
    </React.Fragment>
  );

}

export default ReflectionResponsesStep;
