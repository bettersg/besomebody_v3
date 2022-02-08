import React, { useState, useContext , createContext } from 'react'

export const RoomContext = createContext({})

export const useRoomContext = () => {
  return useContext(RoomContext)
}

export const RoomProvider =  ({ children })  => {  
  // const { roomCode } = useParams()
  const [room, setRoom] = useState(null)
  const [roomCode, setroomCode] = useState(null)
  
  
  // const [room, setRoom] = useState(
  //   {
  //     roomCode: 'abc123',
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
  return <RoomContext.Provider value={{ roomValue: [room, setRoom], roomCodeValue: [roomCode, setroomCode] }}>{children}</RoomContext.Provider>
}

export const RoomConsumer = RoomContext.Consumer
