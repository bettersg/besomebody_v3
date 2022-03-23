import React from 'react'
import "./style.scss"

const ShareableImage = ({imageData, className }) => {
    const {storyName, text, avatar, avatarImage} = imageData
    var displayText = '';

    if (text.length > 100) {
        displayText = text.slice(0,98)+"..."
    }
    else {
        displayText = text
    }

    return (
        <div className="ShareableImage">
            <div className="ShareableImage__gradient"></div>
            <div className="ShareableImage__avatar" style={{background : `url(${avatarImage}) no-repeat`}}></div>
            <div className="ShareableImage__bottomGradient"></div>
            <div className="ShareableImage__logo" style={{background : `url('/shareable_avatars/tobeyou-logo-white.svg') center`}}></div>
            <div className="ShareableImage__reflectionContainer">
                <div className="ShareableImage__overline">{storyName}</div>
                <div className="ShareableImage__body">{displayText}</div>
            </div>
        </div>
    )

}

export default ShareableImage;