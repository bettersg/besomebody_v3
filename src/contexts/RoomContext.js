import React, { useContext } from 'react'
import { useParams } from 'react-router-dom'

const RoomContext = React.createContext(null)

export const useRoomContext = () => {
  return useContext(RoomContext)
}

// 0. get roomID from URL params X
// 1. check if the roomId exists 
// 2. Get the other info about the room (teacher, school, chapter etc)
// 3. store that into the context as an object

export const RoomProvider = ({ children }) => {
  const { roomId  } = useParams()
  const [room, setRoom] = useState(null)
  
  

  return <RoomContext.Provider value={roomId}>{children}</RoomContext.Provider>
}

