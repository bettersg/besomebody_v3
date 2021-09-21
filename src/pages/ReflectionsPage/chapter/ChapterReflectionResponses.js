import React, { useState, useEffect } from 'react';
import { Box, Button, CircularProgress , 
  Typography,
  Container,} from '@material-ui/core'
import { getDbReflectionResponsesPaginated } from '../../../models/reflectionResponseModel';
import { getDbReflectionResponsesCount } from '../../../models/counterModel';
import { REFLECTION_PAGE_FORM } from '../constants';
import ChapterResponse from './ChapterResponse';
import makeStyles from '@material-ui/core/styles/makeStyles'
import ClipLoader from 'react-spinners/ClipLoader'
import InfiniteScroll from 'react-infinite-scroll-component';

// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

const useStyles = makeStyles((theme) => ({
  // reflectionScrollArea: {
  //   background: "linear-gradient(180deg, rgba(251, 90, 63, 0) 0%, #FB5A3F99 50%)",
  //   height: "1514px", 
  //   overflowX: "scroll",  
  // },
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
    background: "linear-gradient(180deg, rgba(251, 90, 63, 0) 0%, #FB5A3F99 50%)",
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
    textAlign: 'center',    
    alignItems: "center",
    paddingTop: '10%',
    overflow: 'scroll',
    height: "100%", 
  },
  
  btnSection: {
    background: "linear-gradient(180deg, rgba(251, 90, 63, 0) 0%, #FB5A3F 100%)",
    height: "128px", 
    position: "absolute", 
    bottom: 0, 
    width: "100%",
  },
  btn: {
    padding: '10px 50px',
    borderRadius: '40px',
    backgroundColor: '#3835C1',
    textDecoration: 'none',
    color: '#ffffff',
    fontWeight: '700',
    width: "253px", 
    position: "absolute", 
    bottom: 28,
    right: 32, 
    '&:hover': {
      backgroundColor: '#6C70DD',      
      boxShadow: 'none',
      
    },
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



const ChapterReflectionResponses = ({ reflectionId, setPage }) => {
  const [responses, setResponses] = useState(null);
  const [hasMore, setHasMore] = useState(true);
  const [lastDocSnapshot, setLastDocSnapshot] = useState(null);
  const [count, setCount] = useState(null);
  const classes = useStyles()

  async function fetchMoreResponses() {
    const LIMIT = 300;
    const { newResponses, newLastDocSnapshot } = await getDbReflectionResponsesPaginated({
      lastDocSnapshot,
      limit: LIMIT,
      reflectionIds: [reflectionId],
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
    setCount(await getDbReflectionResponsesCount(reflectionId));
  }

  useEffect(() => fetchCount(), []);
  useEffect(() => fetchMoreResponsesIfNotOverflow(), [hasMore, lastDocSnapshot]);

  if (responses == null) {
    // if (responses ) {
    return (
      <Box className={classes.background}>
        <ClipLoader size={106} width={"10"} css={{position: "absolute", top: 253, left: 134, border: "10px solid #898DE4", borderBottomColor:"transparent"}} />
      </Box>
    )
  } else {
    return (
      <Box className={classes.background}>      
      <div className={classes.reflectionScrollArea}>
        <Container className={classes.container} id={'reflectionsContainerId'}>
          <Typography className={classes.headerText}>Reflections from Others</Typography>
          <Typography variant="body2" color="error">{count || 0} players have completed this chapter</Typography>
          <Box>
            <InfiniteScroll
              dataLength={responses.length}
              next={fetchMoreResponses}
              hasMore={hasMore}
              loader={<ClipLoader color="#898DE4" size={106} css={{display:'flex', left:'-15px', margin:'auto', height:'30px'}} />}
              scrollableTarget={'reflectionsContainerId'}
            >
              {responses.map(response => (
                response.answer.length > 5 && <ChapterResponse key={response.id} response={response} />
              ))}
            </InfiniteScroll>
          </Box>
      
        </Container>
        <div className={classes.btnSection}>
          <Button className={classes.btn} onClick={() => setPage(REFLECTION_PAGE_FORM)} fullWidth>Continue</Button>
        </div>
        </div>  
    </Box>
    )
    
  }
}

export default ChapterReflectionResponses;
