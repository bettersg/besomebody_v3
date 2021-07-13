/* eslint-disable react-hooks/exhaustive-deps */
import React, { useContext, useState } from 'react'
import useInk from '../lib/Ink/useInk'

const InkContext = React.createContext(null)

export const useInkContext = () => {
  return useContext(InkContext)
}

export const InkProvider = ({ children }) => {
  const [useInkParams, setUseInkParams] = useState({
    inkJson: null,
    characterId: null,
  })

  const initialiseUseInkHook = (inkJson, characterId) => {
    setUseInkParams({ inkJson, characterId })
  }

  const useInkHook = useInk(useInkParams.inkJson, useInkParams.characterId)

  const value = {
    // useInk hook initialiser
    initialiseUseInkHook,

    // useInk hook
    ...useInkHook,
  }
  return <InkContext.Provider value={value}>{children}</InkContext.Provider>
}
