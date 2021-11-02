import React, { useEffect, useState , createRef } from 'react'
// import ShareableImage from './ShareableImage'
// import * as htmlToImage from 'html-to-image';
// import downloadjs from "downloadjs";
import { isMobile, isIOS } from 'react-device-detect';
import {
  Box,
  Button,
  Typography,
  Container,
} from '@material-ui/core'
// import Loader from "../../components/Loader";
import html2canvas from 'html2canvas'

import { createFileName } from 'use-react-screenshot'


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
  const [image, setImage] = useState(null)
  const [width, setWidth] = useState(300)
  const takeScreenShot = (node) => {
    html2canvas(node, { allowTaint:true, useCORS:true })
    .then((canvas) => {
      const dataUrl = canvas.toDataURL("image/png")
      setImage(dataUrl)
    })
  }

  const getImage = () => {
    // console.log(image)
    if (image) {
      if (isMobile) {
        // console.log ('isMobile' , isMobile)
        fetch(image)
        .then(res => res.blob())
        .then(blob => {
          const file = new File([blob], 'to-be-you-shared.png', {type: 'image/png'})
          // console.log(file)
          const filesArray = [file]
          return filesArray
        })
        .then((filesArray) => {
        if (navigator.canShare && navigator.canShare({ files: filesArray })) {

          // console.log("2 files array:", filesArray)
  
          // NOTE: if text not empty, text will be displayed with URL in the shared message,
          // if text is empty, title will be displayed with URL in shared message 
          // i.e. text takes precedence over title (only 1 out of the 2 will be shared)
          if (isIOS) {
            navigator.share({
              files: filesArray
            })
            .then(() => {
              console.log('Successfully shared');
            })
            .catch(error => {
              console.error('Something went wrong sharing the image', error);
            });
          }
          else {
          navigator.share({
              title: `${storyName}`, 
              text: "I completed playing the interactive fiction game ToBeYou.sg, and I want you to join me!",  
              url: document.location.href,
              files: filesArray
            })
            .then(() => {
              console.log('Successfully shared');
            })
            .catch(error => {
              console.error('Something went wrong sharing the image', error);
            });
          }
        }
        else {
          download(image, { name: 'to-be-you', extension: 'png' })
          console.log(document.getElementsByClassName("downloadBtn"))
        }
      })

      }
      else {
        // console.log ('isMobile' , isMobile)
        download(image, { name: 'to-be-you', extension: 'png' })
      }
    }
    else{
      takeScreenShot(ref.current)
    }
  }

  const download = (image, { name, extension } = {}) => {
    const a = document.createElement('a')
    a.href = image
    a.download = createFileName(extension, name)
    a.click()
  }

  useEffect(() => {
    takeScreenShot(ref.current)
    document.getElementsByClassName("ShareableImage")[0].style.visibility='hidden' 
  }, [])
  
    var displayText = '';

    if (text.length > 200) {
        displayText = text.slice(0,198)+"..."
    }
    else if (text.length == 0) {
        displayText = "I completed playing the interactive fiction game ToBeYou.sg, and I want you to join me!"
    }
    else {
        displayText = text
    }


  return (
    
    <div>
    
      <div ref={ref} className="ShareableImage" style={{width: "300px", height: "300px"}}>
        
        
            <div className="ShareableImage__gradient"></div>
            <img className="test_avatar" crossOrigin = "anonymous" src={avatarImage} style={{position: "absolute", width: "300px", height: "300px",
            left: "0px", top: "0px", opacity: "0.6"}} />
            <div className="ShareableImage__bottomGradient"></div>
            <img className="test_logo" crossOrigin = "anonymous" src="/shareable_avatars/tobeyou-logo-white.svg" style={{position: "absolute", width: "80px", height: "60px", left: "16px", 
            top: "22px", filter: "drop-shadow(0px 4px 6px rgba(0, 0, 0, 0.04))", transform: "rotate(-2deg)"}}/>
            <div className="ShareableImage__reflectionContainer">
                <div className="ShareableImage__overline">{storyName}</div>
                <div className="ShareableImage__body">{displayText}</div>
            </div>
        
        
      </div>

      
      {/* <button onClick={loadImage}>Pre-load image</button> */}
      <img width={width} src={image} alt={"ScreenShot"} className="ShareableImage" />
      <Button variant="outlined" className="downloadBtn" onClick={getImage} >{isMobile ? 'Share reflection' : 'Download Image'}</Button>
      {/* <button onClick={getImage} className="btn">{isMobile ? 'Share via Mobile' : 'Download Image'}</button> */}
  </div>
  )};

export default ShareableImageContainer;