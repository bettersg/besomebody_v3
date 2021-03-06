import React from 'react'
import "./styles.scss"

export const IntroBanner = (props) => {
    const {loadSavedStory , persona } = props
    // console.log(loadSavedStory)
    // console.log(persona)
    return (
        // {/* <!-- Continue Playing Banner --> */}
        <div 
        className="IntroBanner__banner"
            style={{ backgroundImage:  persona.profileImage }}
        >
            
            <div className="grid-container">
                <div>
                    <div className="item1_continuePlaying">CONTINUE FROM YOUR AUTOSAVE</div>
                    <div className="item2_characterName">{persona.name.split(" ")[0]}</div>  
                </div>
                
                <div className="item4_playButton" >
                    <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="25" cy="25" r="25" fill="#664EFC"/>
                    <path d="M34.0278 25L20.4862 35.8253V14.1747L34.0278 25Z" fill="white"/>
                    </svg>
                </div>
            </div>
        </div>
        
    )

}