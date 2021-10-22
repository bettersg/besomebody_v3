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
import {
  Close as CloseIcon,
  Tune as TuneIcon,
} from '@material-ui/icons';
import ClipLoader from 'react-spinners/ClipLoader'
import InfiniteScroll from 'react-infinite-scroll-component';
import { CHARACTER_MAP } from '../../../models/storyMap';

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  reflectionScrollArea: {
    background: "#FB5A3F99",
    // height: "1514px", 
    // overflowX: "scroll",  
  },
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
    // backgroundImage: ({ image }) => `url('/images/bg_reflections.jpg')`,
    backgroundColor: "#26248F", 
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    overflowX: "hidden", 
    bottom: 0, 

  },
  headerText: {
    fontSize: '2rem',
    fontWeight: 800,
    color: '#ffffff',
  },
  whiteText: {
    color: "white", 
    textAlign: "center", 
    margin: "40px", 
    fontSize: "18px", 
  }, 
  whiteTextReflection: {
    color: "white", 
    textAlign: "center", 
    marginTop: "11px", 
    marginBottom: "11px", 
    fontSize: "15px", 
    margin: "50px", 
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
    // margin: 'auto',
    textAlign: 'center',    
    alignItems: "center",
    paddingTop: '10%',
    overflow: 'scroll',
    height: "100%", 
    width: "100%", 
  },

  btnSection: {
    background: "linear-gradient(180deg, rgba(251, 90, 63, 0) 0%, #FB5A3F 100%)",
    height: "128px", 
    position: "absolute", 
    bottom: 0, 
    width: "100%",
  },
  fixedBtn: {
    padding: '10px 50px',
    borderRadius: '40px',
    backgroundColor: '#3835C1',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    width: "230px", 
    position: "absolute", 
    bottom: 28,
    right: 32, 
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  filterBtn: {
    padding: '10px 10px',
    borderRadius: '40px',
    backgroundColor: '#3835C1',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '400',
    left: 10,
    bottom: 28,
    position: 'absolute',
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
  },
  filterChaptBtn: {
    textTransform: 'none',
    color: '#C4C6F1',
    '&.Mui-selected': {
      backgroundColor: '#6C70DD',           
      color: '#ffffff',
      fontWeight:'700',
  }
  },
  filterChaptBtnSelected: {
    
      backgroundColor: '#6C70DD',           
      color: '#ffffff'
 
  },
  filterActionBtn: {
    fontWeight: 'bold',
    textTransform: 'none',
    margin: '10px',
  },
  closeIcon: {
    cursor: 'pointer',
    float: 'right',
    margin: '10px'
  },
  filterDrawer: {
    padding: '20px',
    textAlign: 'center',
    backgroundColor: '#3835C1',
    color: '#ffffff',
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
  fullPage: {
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
    display: "flex", 
    justifyContent: "center", 
    alignItems: "center",
  },
  yourStories: {
       


    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },

  }, 
  yourStoriesBkgrd: {
    backgroundImage: ({ image }) => `url('/reflection/reflection-bg-yrstories.png')`,
    backgroundSize: '500px 930px',
    backgroundPosition: 'center',
    width: "100%", 
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
  },
  whiteTextWithBkGrd: {
    color: "white", 
    textAlign: "center", 
    position: "relative", 
    bottom: "50%", 
    fontSize: "18px", 
  }, 
  reflectionBubbles: {
    width: "295px",
    alignItems: "center", 
    marginLeft: "30px", 
    marginTop: "40%", 
  }, 
  reflectionBubblesHeaderText: {
    fontSize: '24px',
    textAlign: "center", 
    lineHeight: '27px',
    fontWeight: 800, 
    transform: "rotate(4deg)",
    color: '#ffffff',
    position: "relative", 
    top: 243, 
    left: 83, 
    width: "200px", 
  },
  gradientBkgrd: {
    paddingTop: "50%", 
    background: "linear-gradient(180deg, rgba(251, 90, 63, 0) 0%, #FB5A3F99 100%)",
    height: '660px',
    [theme.breakpoints.only('xs')]: {
      height: 'calc(var(--vh, 1vh) * 100)',
    },
  }, 
  heart:{
    width: "30px", 
    '&:hover': {
      cursor: 'pointer',
      filter: 'invert(23%) sepia(29%) saturate(6407%) hue-rotate(346deg) brightness(101%) contrast(146%)',
    },
  },
  bottomLikeSection: {
    display: "flex", 
    flexDirection: "column",
    opacity: 0.6,  
    justifyContent: "center", 
    alignItems: "center", 
    marginTop: "52px", 
  }, 
  nextButton: {
    position: "absolute", 
    bottom: 20, 
    opacity: 0.6,  
    left: "47%", 
    height: "8px", 
    '&:hover': {
      cursor: 'pointer',
    },
  }
}))

function getCharacterId(reflectionId) {
  return CHARACTER_MAP.find(char => char.chapters.some(chapt => chapt.reflectionId === reflectionId)).characterId;
}

function getChapterReflectionIds(characterId) {
  const chapters = CHARACTER_MAP.find(char => char.characterId === characterId).chapters;
  return chapters.map(chapt => [chapt.chapterId, chapt.reflectionId]);
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
  const [currentPage, setCurrentPage] = useState(1)


  function handleFilterButtonClick(event, newFilterReflectionIds) {
    setFilterReflectionIds(newFilterReflectionIds);
  }

  function filterReset() {
    setFilterReflectionIds([reflectionId]);
  }

  function filterApply() {
    setResponses(null);
    setHasMore(true);
    setLastDocSnapshot(null);
    setReflectionIds(filterReflectionIds);
    toggleFilterDrawer(false);
  }

  const FilterDrawer = () => {
    const characterId = getCharacterId(reflectionId);
    const allChapterReflectionIds = getChapterReflectionIds(characterId);
    return (
      <div role='presentation' onKeyDown={toggleFilterDrawer(false)} className={classes.filterDrawer}>
        <h1>Filter stories</h1> <CloseIcon className={classes.closeIcon} onClick={toggleFilterDrawer(false)}/>
        
        <Typography>View reflections from:</Typography>
        <ToggleButtonGroup value={filterReflectionIds} onChange={handleFilterButtonClick}>
          {
            allChapterReflectionIds.map(([chaptId, reflId]) =>
              <ToggleButton className={ classes.filterChaptBtn} value={reflId}>
                Chapter {chaptId}
              </ToggleButton>
            )
          }
        </ToggleButtonGroup>
        <br />
        {/* <ToggleButtonGroup>
          <ToggleButton
            className={classes.filterActionBtn}
            onClick={filterReset}>
            Reset
          </ToggleButton>
          <ToggleButton
            className={classes.filterActionBtn}
            onClick={filterApply}
            disabled={filterReflectionIds.length === 0}>
            Apply
          </ToggleButton>

        </ToggleButtonGroup> */}
        <Button variant="contained" color="primary"  className={classes.filterActionBtn} onClick={filterApply} disabled={filterReflectionIds.length === 0} >APPLY</Button>
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
    <div>
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
         <ClipLoader size={106} width={"10"} css={{position: "absolute", top: 253, left: 134, border: "10px solid #898DE4", borderBottomColor:"transparent"}} />
        </Box>
        :
        // if there are responses, step through the whole sequence using currentPage
        <div>

          <div className={`${classes.background} reflectionsContainer`}>   
          {currentPage === 1 ? 
            <div className={classes.fullPage} onClick={() => setCurrentPage(currentPage + 1)}>
              <Typography className={classes.whiteText}>While this is the end for this story, it is the start of a new kind of story.</Typography>
                <img src="/reflection/next_icon.png" className={`${classes.nextButton}`}/>
            </div>
        :
          currentPage === 2 ?
          <div className={classes.yourStories} onClick={() => setCurrentPage(currentPage + 1)}>
            <div className={classes.yourStoriesBkgrd}></div>
            <Typography className={classes.whiteTextWithBkGrd}>Your stories.</Typography>
              <img src="/reflection/next_icon.png" className={`${classes.nextButton}`}/>
          </div>
        :
          currentPage === 3 ?
          <div className={classes.yourStoriesBkgrd}  onClick={() => setCurrentPage(currentPage + 1)}>
              <Typography className={classes.reflectionBubblesHeaderText}>{count} players have finished the game.</Typography>
              <img src="/reflection/reflection_bubbles.png" className={`${classes.reflectionBubbles} reflectionsContainer__reflectionBubbles`}/>
              <img src="/reflection/next_icon.png" className={`${classes.nextButton}`}/>
          </div>       
        :      
          currentPage === 4 ?
          <div className={classes.yourStoriesBkgrd}  onClick={() => setCurrentPage(currentPage + 1)}>
            <div className={classes.gradientBkgrd}>
              <ChapterResponse key={responses[0].id} response={responses[0]} />
              <div className={classes.bottomLikeSection}>
                <img src="/reflection/reflection_heart_white.png" className={classes.heart}/>
                <Typography className={classes.whiteTextReflection}>Tap on this icon to say that you connected with a reflection.</Typography>

              </div>
            </div>
          </div>
        :         
          // this is the section with the actual reflections          
        // <Box className={classes.background}>
        //     <Typography variant="body2" color="error">{count || 0} players have completed these chapters</Typography>
        <div className={classes.reflectionScrollArea}>           
          <div className={`${classes.container} reflectionsContainer`} id={'reflectionsContainerId'}>
          {/* <Typography >Reflections from Others</Typography> */}
          {/* <Container  id={'reflectionsContainerId'}>  */}
            <Box>
              <InfiniteScroll
                dataLength={responses.length}
                next={fetchMoreResponses}
                hasMore={hasMore}
                loader={<ClipLoader color="#898DE4" size={106} css={{display:'flex', left:'-15px', margin:'auto', height:'30px'}} />}
                scrollableTarget={'reflectionsContainerId'}
              >
                {responses.map(response => (
                  response.answer.length > 10 && <ChapterResponse key={response.id} response={response} />
                ))}
              </InfiniteScroll>
            </Box>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        {/* </Container> */}
          </div>
          <div className={classes.btnSection}>
            <Button className={classes.filterBtn} onClick={toggleFilterDrawer(true)}><TuneIcon /> </Button>
            <Button className={classes.fixedBtn} onClick={next}>Continue</Button>
          </div>
        </div>  
      }
      </div>
    </div>  
    }
  </div>
  );

}

export default ReflectionResponsesStep;
