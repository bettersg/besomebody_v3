import React, { useState, useContext } from 'react'
import { useParams } from 'react-router-dom'

export const RoomContext = React.createContext(null)

export const useRoomContext = () => {
  return useContext(RoomContext)
}

// 0. get roomID from URL params X unable to call useParams from inside Provider
// 1. check if the roomId exists 
// 2. Get the other info about the room (teacher, school, chapter etc)
// 3. store that into the context as an object  -> DONE

export const RoomProvider =  ({ children })  => {  
  // const { roomId } = useParams()
  
  const [room, setRoom] = useState(
    {
      roomId: 'abc123',
      schoolName: 'My Secondary School',
      className: 'Sec 3F',
      instructions: 'Please finish Aman Chapter 2',
      teachers: [
        { name: 'John Smith' },
        { name: 'Jane Doe'}
      ]
    }
  )
  

  // console.log(room)
  return <RoomContext.Provider value={[room, setRoom]}>{children}</RoomContext.Provider>
}

