import React, { useContext, useEffect, useState } from 'react'
import { auth } from '../firebase'

const AuthContext = React.createContext(null)

export const useAuth = () => {
  return useContext(AuthContext)
}

export const AuthProvider = ({ children }) => {
  const [currentUser, setCurrentUser] = useState(null)
  const [isLoading, setIsLoading] = useState(true)

  const signUp = (email, password) => {
    return auth.createUserWithEmailAndPassword(email, password)
  }

  const login = (email, password) => {
    return auth.signInWithEmailAndPassword(email, password)
  }

  const logout = () => {
    return auth.signOut()
  }

  const resetPassword = (email) => {
    return auth.sendPasswordResetEmail(email)
  }

  const deleteUser = () => {
    return auth.currentUser.delete()
  }

  useEffect(() => {
    const unsubscribe = auth.onAuthStateChanged((user) => {
      const { uid, ...rest } = user || {}
      const nextCurrentUser = user ? {
        ...rest,
        id: uid,
      } : null
      setCurrentUser(nextCurrentUser)
      setIsLoading(false)
    })

    return unsubscribe
  }, [])

  const value = {
    currentUser,
    signUp,
    login,
    logout,
    resetPassword,
    deleteUser,
  }
  return (
    <AuthContext.Provider value={value}>
      {!isLoading && children}
    </AuthContext.Provider>
  )
}
