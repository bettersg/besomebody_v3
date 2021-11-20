import React, { useContext } from 'react'
import { useParams } from 'react-router-dom'

const RoomContext = React.createContext(null)

export const useRoomContext = () => {
  return useContext(RoomContext)
}

export const RoomProvider = ({ children }) => {
    const { roomId  } = useParams()
  
  return <RoomContext.Provider roomId={roomId}>{children}</RoomContext.Provider>
}


// import React, { useState } from 'react';
// export const UserContext = React.createContext('');
// const LoginContext = ({ subPages }) => {
//     const [user, setUser] = useState('');
//     return (
//         <UserContext.Provider value={[user, setUser]}>
//             {subPages}
//         </UserContext.Provider>
//     )
// }
// export default LoginContext;