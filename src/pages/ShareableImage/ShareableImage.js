import React from 'react'
import "./style.scss"

const ShareableImage = ({imageData, className }) => {
    const {id, text, avatar} = imageData;
    var avatarImage = '';
    var displayText = '';

    // avatar image is set here
    // IMPT you should replace this with the dynamic image passed down from the parent
    switch(avatar) {
        case 'nadia':
            avatarImage = '/shareable_avatars/nadia.png';
            break;
        case 'aman':
            avatarImage = '/images/profile_aman.png';
            break;
        default:
            avatarImage = '/shareable_avatars/nadia.png';
            break;
    }

    if (text.length > 200) {
        displayText = text.slice(0,198)+"..."
    }
    else {
        displayText = text
    }


    // return <div style={{
    //     // background image is fixed and set in this component
    //     backgroundImage: "url(/images/bg_reflections.jpg)"}} className={className} id={id}>
    //     {/* shareable image text is set below */}
    //     <h3 h3 style={{ color: 'white' }}>{text}</h3>
    //     {/* overlay image of avatar is set below */}
    //     <img src={avatarImage} alt="Avatar" />
    // </div>

    return (
        <div className="ShareableImage">
            <div className="ShareableImage__gradient"></div>
            <div className="ShareableImage__avatar" style={{background : `url(${avatarImage}) no-repeat`}}>
                {/* <img src='/images/cha_nadia_intro' alt="Avatar" /> */}
            </div>
            <div className="ShareableImage__bottomGradient"></div>
            <div className="ShareableImage__logo" style={{background : `url('/shareable_avatars/tobeyou-logo-white.svg') center`}}></div>
            <div className="ShareableImage__overline">Nadia's Story</div>
                 {/* IMPT you should replace the name with the dynamic info from the storyName */}
            <div className="ShareableImage__body">{displayText}</div>
        </div>
    )
}

export default ShareableImage;