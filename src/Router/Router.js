import React, { Component } from 'react'

import PropTypes from 'prop-types'

import { BrowserRouter, Switch, Redirect, Route } from 'react-router-dom'

import AdminPage from '../components/AdminPage'
import UserPage from '../components/UserPage'
import NotFoundPage from '../components/NotFoundPage'
import HomePage from '../pages/HomePage/HomePage'
import InkTestPage from '../pages/InkTestPage/InkTestPage'
import InkTestPageBasic from '../pages/InkTestPage/InkTestPageBasic'
import CharProfilePage from '../pages/CharProfilePage/CharProfilePage'
import HomePg from "../pages/HomePage/App"
import WhatsappPage from "../pages/WhatsappPage/WhatsappPage"

class Router extends Component {
  render() {
    // Properties
    const { user, roles, bar } = this.props
    console.log(this.props)

    // Functions
    const { openSnackbar } = this.props

    return (
      <BrowserRouter basename={process.env.REACT_APP_BASENAME}>
        {/* {bar} */}

        <Switch>
          <Route path="/" exact>
            <HomePage user={user} openSnackbar={openSnackbar} />
          </Route>

          <Route path="/ink" exact>
            <InkTestPage />
          </Route>

          <Route path="/ink-basic" exact>
            <InkTestPageBasic />
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
            <HomePg />
          </Route>

          <Route path="/profile" exact>
            <CharProfilePage />
          </Route>

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
