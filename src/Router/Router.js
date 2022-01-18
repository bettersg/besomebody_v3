import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { BrowserRouter, Switch, Redirect, Route } from 'react-router-dom'
import { createTheme, ThemeProvider } from '@material-ui/core/styles';

import AdminPage from '../components/AdminPage'
import UserPage from '../components/UserPage'
import NotFoundPage from '../components/NotFoundPage'
import PrivateRoute from '../components/PrivateRoute'
import SignUp from '../pages/SignUp/SignUp'
import Login from '../pages/Login/Login'
import ForgetPassword from '../pages/ForgetPassword/ForgetPassword'
import InkController from '../pages/InkController/InkController'
import LandingPage from '../pages/LandingPage'
import CharacterChoicePage from '../pages/CharacterChoicePage'
// import { CharacterChoicePage } from '../pages/CharacterChoicePage'
import CharacterChapterPage from '../pages/CharacterChapterPage'
// import { CharacterChapterPage } from '../pages/CharacterChapterPage'
import IntroMaster from '../pages/LandingPage/IntroMaster'
import ProfileBuilderPage from '../pages/ProfileBuilderPage'
import AudioPlayer from "../music/Music"
import Help from '../pages/HelpPage/HelpPage'
import Music1 from '../music/tobeyou_intro.mp3'
// import Music2 from '../music/tobeyou_outrolong.mp3'
import ChapterEnd from '../pages/ChapterEndPage/ChapterEnd'
import ParticipantStartPage from '../pages/RoomPage/ParticipantStartPage'
import RoomInfoPage from '../pages/RoomPage/RoomInfoPage'
import RoomJoinPage from '../pages/RoomPage/RoomJoinPage'

class Router extends Component {
  render() {
    // Properties
    const { user, roles } = this.props
    const InterFont = "'Inter', sans-serif"
    const theme = createTheme({
      typography: {
        fontFamily: 'Inter, sans-serif',
      },

      overrides: {
        MuiCssBaseline: {
          '@global': {
            '@font-face': [InterFont],
          },
        },
        MuiContainer: {
          maxWidthLg: {
            margin: "0px", 
            padding: "0px", 
          }
        }, 
      },
    });

    return (
      <BrowserRouter basename={process.env.REACT_APP_BASENAME}>

        <ThemeProvider theme={theme}>
          <Switch>
            <Route path={["/", "/intro", "/profilebuilder", "/signup", "/login", "/help", "/characterchoice", "/chapters/:name", "/chapterend/:name/:chapter"]} exact>              
              <AudioPlayer Music={Music1} />
            </Route>
          </Switch>

          <Switch>
            <Route path="/" exact>
              {user ? <CharacterChoicePage /> : <LandingPage />}
            </Route>

            <Route path="/intro" exact>
              <IntroMaster />
            </Route>

            {/* participants will enter through game.tobeyou.sg/room/A1b2C3  */}
            <Route path="/room/:roomUrl" exact>                
              {user ? <RoomInfoPage /> : <ParticipantStartPage /> }
            </Route>            

            <Route path="/joinroom" exact>                
              {user ? <RoomJoinPage /> : <ParticipantStartPage /> }
            </Route>     
            

            <PrivateRoute path="/characterchoice" exact>
              <CharacterChoicePage />
            </PrivateRoute>

            <PrivateRoute path="/chapters/:name" exact>
              <CharacterChapterPage />
            </PrivateRoute>
            

            <PrivateRoute path="/story/:name" exact>
              <InkController />
            </PrivateRoute>

            <PrivateRoute path="/chapterend/:name/:chapter" exact>
              <ChapterEnd />
            </PrivateRoute>

            <Route path="/signup" exact>
              <SignUp />
            </Route>

            <PrivateRoute path="/profilebuilder" exact>
              <ProfileBuilderPage />
            </PrivateRoute>

            <Route path="/login" exact>
              <Login />
            </Route>

            <Route path="/help" exact>
              <Help />
            </Route>


            <Route path="/forget-password" exact>
              <ForgetPassword />
            </Route>

            <PrivateRoute path="/admin">
              {user && roles.includes('admin') ? (
                <AdminPage />
              ) : (
                <Redirect to="/" />
              )}
            </PrivateRoute>

            <PrivateRoute path="/user/:userId">
              {user ? <UserPage /> : <Redirect to="/" />}
            </PrivateRoute>

            <Route>
              <NotFoundPage />
            </Route>
          </Switch>

        </ThemeProvider>

      </BrowserRouter>
    )
  }
}

Router.propTypes = {
  // Properties
  user: PropTypes.object,
  roles: PropTypes.array.isRequired,
  bar: PropTypes.element,

  // Functions
  openSnackbar: PropTypes.func.isRequired,
}

export default Router
