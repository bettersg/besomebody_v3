const GeneratedImage = ({imageData, className }) => {
    const {id, text, avatar} = imageData;
    var avatarImage = '';

    // avatar image is set here
    switch(avatar) {
        case 'nadia':
            avatarImage = '/images/profile_nadia.png';
            break;
        case 'aman':
            avatarImage = '/images/profile_aman.png';
            break;
        default:
            avatarImage = '/images/profile_nadia.png';
            break;
    }


    return <div style={{
        // background image is fixed and set in this component
        backgroundImage: "url(/images/bg_reflections.jpg)"}} className={className} id={id}>
        {/* shareable image text is set below */}
        <h3 h3 style={{ color: 'white' }}>{text}</h3>
        {/* overlay image of avatar is set below */}
        <img src={avatarImage} alt="Avatar" />
    </div>
}

export default GeneratedImage;