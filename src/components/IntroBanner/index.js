import React from 'react'
import "./styles.scss"

export const IntroBanner = (props) => {
    return (
        // {/* <!-- Continue Playing Banner --> */}
        <div 
            className="IntroBanner__banner"
            style={{backgroundImage:`url(/character_choice_page/nadia.png)`}}
        >
            
            <div className="grid-container">
                <div>
                    <div className="item1_continuePlaying">Continue Playing</div>
                    <div className="item2_characterName">Nadia</div>  
                </div>

                <div className="item4_playButton">
                    <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="25" cy="25" r="25" fill="#664EFC"/>
                    <path d="M34.0278 25L20.4862 35.8253V14.1747L34.0278 25Z" fill="white"/>
                    </svg>
                </div>
            </div>
        </div>
        
    )

}