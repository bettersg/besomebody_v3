import React from 'react'
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
// import { Alert } from '@material-ui/lab'
// import { useAuth } from '../../contexts/AuthContext'
import { Link , useHistory} from 'react-router-dom'
import makeStyles from '@material-ui/core/styles/makeStyles'


const useStyles = makeStyles((theme) => ({
  background: {
    backgroundImage: ({ image }) => `url('/images/bg_launch.png')`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    height: '660px',
    [theme.breakpoints.only('xs')]: {
        height: '100vh',
    },
    bottom: 0, 

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
  link: {
    color: '#000A11',
    fontSize: '0.9rem',
    fontWeight: '700',
    textDecoration: 'none',
    '&:hover': {
      color: '#664EFC'
    },
  }
}))

const LandingPage = () => {
  // const [isLoading, setIsLoading] = useState(false)
  // const [isDialogOpen, setIsDialogOpen] = useState(false)
  // const [snackbar, setSnackbar] = useState({
  //   message: '',
  //   open: false,
  //   type: 'error',
  // })
  const classes = useStyles()  
  const history = useHistory()

  // const { currentUser } = useAuth()  

  return (
    <Box className={classes.background}>
      

      
      
        <Container maxWidth="md" className={classes.container}>
          <Box py={4} textAlign="center">
          <Typography className='LandingPage__text'>Experience life in Singapore as someone else.</Typography>            
          </Box>
          
          
          <Box className={classes.bottom}>
            <Button variant="contained" className={classes.btn}  onClick={() => history.push('/intro')}>Start New Game</Button>          
          <br />
           <Link to="/login" className={classes.link}> Login to Resume</Link>
          </Box>
          
        </Container>
       
      
      
 
 

      
    </Box>
  )
}

export default LandingPage;

/*  

        

        <Box mx="auto" width="75%" my={2}>
            <Link to="/intro"><Button variant="contained" fullWidth={true} color="primary"  >Start New Game</Button></Link>
          </Box>
          <Box mx="auto" width="75%" my={2}>
            <Link to="/login"><Button variant="contained" fullWidth={true} color="secondary" >Login to Resume Game</Button></Link>
            
          </Box>
        
*/
