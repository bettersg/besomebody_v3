import React, { useEffect, useState , createRef } from 'react'
// import ShareableImage from './ShareableImage'
// import * as htmlToImage from 'html-to-image';
// import downloadjs from "downloadjs";
import {isMobile} from 'react-device-detect';
import Loader from "../../components/Loader";

import { useScreenshot , createFileName } from 'use-react-screenshot'


import "./style.scss"

// format which Shareable image takes in data (dictionary):
// const data = {
//     id: 1, 
//     text: "I've just finished playing Chapter One of Nadia's Story!", 
//     avatar: 'nadia'}

const ShareableImageContainer = ({data }) =>{
  const { storyName, text, avatar, avatarImage } = data;
  var exportData, position, exportOptions, imageDataStream = undefined;

  const [isLoading, setIsLoading] = useState(true);
  const [filesArray, setFilesArray] = useState([]);
  const [fontEmbedCss, setFontEmbedCss] = useState(null);


  const ref = createRef(null)
  const [image, takeScreenShot] = useScreenshot()
  const [width, setWidth] = useState(300)

  const getImage = () => takeScreenShot(ref.current)  

  

  const download = (image, { name = 'img', extension = 'png' } = {}) => {
    const a = document.createElement('a')
    a.href = image
    a.download = createFileName(extension, name)
    a.click()
  }

  useEffect(() => {
    if (image) {
      download(image, { name: 'to-be-you', extension: 'jpg' })  
    }
  }, [image])

  // console.log('image', image)
  
    var displayText = '';

    if (text.length > 200) {
        displayText = text.slice(0,198)+"..."
    }
    else {
        displayText = text
    }


  return (
    
    <div>
      <h1 >Share your experience playing To Be You!</h1>
      <div ref={ref} className="ShareableImage">
        
        
            <div className="ShareableImage__gradient"></div>
            <div className="ShareableImage__avatar" style={{background : `url(${avatarImage}) no-repeat`}}></div>
            <div className="ShareableImage__bottomGradient"></div>
            <div className="ShareableImage__logo" style={{background : `url('/shareable_avatars/tobeyou-logo-white.svg') center`}}></div>
            <div className="ShareableImage__reflectionContainer">
                <div className="ShareableImage__overline">{storyName}'s Story</div>
                <div className="ShareableImage__body">{displayText}</div>
            </div>
        
        
      </div>
    
    
      <button onClick={getImage}>Share</button>
      {/* <button onClick={loadImage}>Pre-load image</button> */}
      {/* <img width={width} src={image} alt={"ScreenShot"} /> */}
  </div>
  )};

export default ShareableImageContainer;