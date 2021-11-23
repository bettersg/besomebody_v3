import React, { useState, useContext , createContext } from 'react'

export const RoomContext = createContext({})

export const useRoomContext = () => {
  return useContext(RoomContext)
}

export const RoomProvider =  ({ children })  => {  
  // const { roomId } = useParams()
  const [room, setRoom] = useState({
    roomId: 'abc123',
    schoolName: 'My Secondary School',
    className: 'Sec 3F',
    instructions: 'Please finish Aman Chapter 2',
    teachers: [
      { name: 'John Smith' },
      { name: 'Jane Doe'}
    ]
  })

  
  // const [room, setRoom] = useState(
  //   {
  //     roomId: 'abc123',
  //     schoolName: 'My Secondary School',
  //     className: 'Sec 3F',
  //     instructions: 'Please finish Aman Chapter 2',
  //     teachers: [
  //       { name: 'John Smith' },
  //       { name: 'Jane Doe'}
  //     ]
  //   }
  // )
  

  // console.log(room)
  return <RoomContext.Provider value={[room, setRoom]}>{children}</RoomContext.Provider>
}

export const RoomConsumer = RoomContext.Consumer
