import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { BrowserRouter, Switch, Redirect, Route } from 'react-router-dom'

import AdminPage from '../components/AdminPage'
import UserPage from '../components/UserPage'
import NotFoundPage from '../components/NotFoundPage'
import PrivateRoute from '../components/PrivateRoute'
import SignUp from '../pages/SignUp/SignUp'
import Login from '../pages/Login/Login'
import ForgetPassword from '../pages/ForgetPassword/ForgetPassword'

import InkController from '../pages/InkController/InkController'
import WhatsappPage from '../pages/WhatsappPage/Whatsapp'

import HomePage from '../pages/HomePage/HomePage'
import CharProfilePage from '../pages/CharProfilePage/CharProfilePage'
import CharacterChoice from "../pages/HomePage/CharacterChoice"

// import InkTestPage from '../pages/InkTestPage/InkTestPage'
// import InkTestPageBasic from '../pages/InkTestPage/InkTestPageBasic'
// import InstagramPage from '../pages/InstagramPage/InstagramPage'

class Router extends Component {
  render() {
    // Properties
    const { user, roles, bar } = this.props
    console.log(this.props)

    return (
      <BrowserRouter basename={process.env.REACT_APP_BASENAME}>
        {/* {bar} */}

        <Switch>
          <PrivateRoute path="/" exact>
            <HomePage />
          </PrivateRoute>


          <PrivateRoute path="/story/:name" exact>
            <InkController />
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

          <Route path="/admin">
            {user && roles.includes('admin') ? (
              <AdminPage />
            ) : (
              <Redirect to="/" />
            )}
          </Route>

          <Route path="/user/:userId">
            {user ? <UserPage /> : <Redirect to="/" />}
          </Route>

          <Route path="/home" exact>
            <CharacterChoice />
          </Route>

          <Route path="/profile" exact>
            <CharProfilePage />
          </Route>

          
          {/* // old routes 
          
          <PrivateRoute path="/ink" exact>
            <InkTestPage />
          </PrivateRoute>


          <Route path="/ink-basic" exact>
            <InkTestPageBasic />
          </Route>
          
          <Route path="/insta" exact>
            <InstagramPage />
          </Route>
          
          */}

          <Route path="/wa" exact>
            <WhatsappPage />
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
