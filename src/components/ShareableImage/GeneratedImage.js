const GeneratedImage = ({imageData, className }) => {
    const {id, text, avatar} = imageData;
    return <div style={{
        // background image is fixed and set below
        backgroundImage: "url(/images/bg_reflections.jpg)"}} className={className} id={id}>
        {/* shareable image text is shown here */}
        <h3>{text}</h3>
        {/* image of avatar is overlayed here */}
        <img src={avatar} alt="Avatar" />
    </div>
}

export default GeneratedImage;