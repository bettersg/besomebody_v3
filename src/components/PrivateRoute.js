import React from 'react'
import { Redirect, Route } from 'react-router'
import { useAuth } from '../contexts/AuthContext'

const PrivateRoute = ({ children, ...rest }) => {
  const { currentUser } = useAuth()

  return (
    <Route {...rest}>{currentUser ? children : <Redirect to="/login" />}</Route>
  )
}

export default PrivateRoute
