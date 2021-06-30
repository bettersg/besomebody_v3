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
    chapterId: null,
  })

  const initialiseUseInkHook = (inkJson, characterId, chapterId) => {
    setUseInkParams({ inkJson, characterId, chapterId })
  }

  const useInkHook = useInk(
    useInkParams.inkJson,
    useInkParams.characterId,
    useInkParams.chapterId
  )

  const value = {
    // useInk hook initialiser
    initialiseUseInkHook,

    // useInk hook
    ...useInkHook,
  }
  return <InkContext.Provider value={value}>{children}</InkContext.Provider>
}
