import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { BrowserRouter, Switch, Redirect, Route , Link } from 'react-router-dom'

import AdminPage from '../components/AdminPage'
import UserPage from '../components/UserPage'
import NotFoundPage from '../components/NotFoundPage'
import PrivateRoute from '../components/PrivateRoute'
import SignUp from '../pages/SignUp/SignUp'
import Login from '../pages/Login/Login'
import ForgetPassword from '../pages/ForgetPassword/ForgetPassword'

import InkController from '../pages/InkController/InkController'

import LandingPage from '../pages/LandingPage'
import CharacterChoicePage from "../pages/CharacterChoicePage"
import CharacterChapterPage from "../pages/CharacterChapterPage"
import IntroPage from "../pages/IntroPage"
import EmailPage from "../pages/EmailPage/EmailPage"
 
class Router extends Component {
  render() {
    // Properties
    const { user, roles, bar } = this.props
    // console.log(this.props)

    return (
      <BrowserRouter basename={process.env.REACT_APP_BASENAME}>
        {/* {bar} */}

        <Switch>
          <Route path="/" exact>            
              {user ?
                (
                  <CharacterChoicePage />
                )
                :
                (
                  <LandingPage />
                )
              }            
          </Route>


          <Route path="/intro" exact>                        
            <IntroPage />             
          </Route>

          <PrivateRoute path="/chapters/:name" exact>
            <CharacterChapterPage />
          </PrivateRoute>
        
          <PrivateRoute path="/story/:name" exact>
            <InkController />
          </PrivateRoute>
          
          <PrivateRoute path="/characterchoice" exact>
            <CharacterChoicePage />
          </PrivateRoute>
 
          

          <Route path="/signup" exact>
            <SignUp />
          </Route>

          <Route path="/login" exact>
            <Login />
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

          <Route path="/email" exact>
            <EmailPage />
          </Route>


          <Route>
            <NotFoundPage />
          </Route>
        </Switch>
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
