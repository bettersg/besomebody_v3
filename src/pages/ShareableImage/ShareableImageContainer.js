import React, { useEffect, useState , createRef } from 'react'
import ShareableImage from './ShareableImage'
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

  const getImage = () => {
    if (image) {
      if (isMobile) {
        console.log ('isMobile' , isMobile)
      }
      else {
        console.log ('isMobile' , isMobile)
        download(image, { name: 'to-be-you', extension: 'jpg' })
      }
    }
  }

  

  const download = (image, { name = 'img', extension = 'png' } = {}) => {
    const a = document.createElement('a')
    a.href = image
    a.download = createFileName(extension, name)
    a.click()
  }

  useEffect(() => {
    takeScreenShot(ref.current);
    document.getElementsByClassName("ShareableImage")[0].style.visibility='hidden' 
  }, [])

  // console.log('image', image)
  
    var displayText = '';

    if (text.length > 200) {
        displayText = text.slice(0,198)+"..."
    }
    else {
        displayText = text
    }

  // useEffect(() =>{
  //   loadImage()
  // }, [])



  // const loadImage = () => {

  //   exportData = document.getElementsByClassName('ShareableImage')
  //   console.log('export data [0] ', exportData[0])

  //   position = exportData[0].getBoundingClientRect()
    
  //   let fontEmbedCss = undefined;

  //   async function fetchWebFont() {
  //     fontEmbedCss = await htmlToImage.getWebFontEmbedCss(exportData[0]);
  //     setFontEmbedCss(fontEmbedCss)
  //     console.log('fetched web font!')
  //   }

  //   fetchWebFont()
  //   .then(exportOptions = {
  //     width: position.width,
  //     height: position.height,
  //     fontEmbedCss: fontEmbedCss,
  
  //     style: {
  //       position: 'static',
  //       margin: '173 0 0 37'
  //     }
  //   })
  //   .then(
  //   htmlToImage.toBlob(exportData[0], exportOptions)
  //   .then(function (blob) {
  //     console.log("done generating image!")
  //     var file = new File([blob], 'to-be-you-shared-mobile.jpg', { type: blob.type })
  //     console.log(file)
  //     const files = [file]
  //     console.log(files)
  //     // imageDataStream = dataUrl
  //     // var file = new File([dataUrl], 'to-be-you-shared.jpg', {type: 'image/jpeg'})
  //     // console.log(file)
  //     // const files = [file]
  //     // console.log(files)
  //     return files})
  //   .then((files) => {
  //     setFilesArray(files)
  //     console.log("files array: ", filesArray)
  //     setIsLoading(false)
  //     console.log("loading: ", isLoading)
  //   }))

  //   console.log("hello")

  // }


  // const fontEmbedCss = await htmlToImage.getWebFontEmbedCss(exportData[0]);

  // const position = exportData[0].getBoundingClientRect();

  // var exportOptions = {
  //   width: position.width,
  //   height: position.height,
  //   // fontEmbedCss: fontEmbedCss,

  //   style: {
  //     position: 'static',
  //     margin: '173 0 0 37'
  //   }
  // }

  // const filesArray = htmlToImage.toBlob(exportData[0])
  // .then(function (blob) {
  //   var file = new File([blob], 'to-be-you-shared-mobile.jpg', { type: blob.type })
  //   console.log(file)
  //   const filesArray = [file]
  //   console.log(filesArray)
  //   return filesArray})


  // const exportAsPicture = () => {

  //   exportData = document.getElementsByClassName('ShareableImage')

  //   position = exportData[0].getBoundingClientRect()

  //   exportOptions = {
  //     width: position.width,
  //     height: position.height,
  //     fontEmbedCss: fontEmbedCss,
  
  //     style: {
  //       position: 'static',
  //       margin: '173 0 0 37'
  //     }
  //   }

  //   // var exportData = document.getElementsByClassName('ShareableImage') // this is the problem. the element htmlToImageVis is null

  //   // const position = exportData[0].getBoundingClientRect();
  //   // // console.log("position", position)

  //   // // const fontEmbedCss = await htmlToImage.getWebFontEmbedCss(exportData[0]);

  //   // var exportOptions = {
  //   //   width: position.width,
  //   //   height: position.height,
  //   //   // fontEmbedCss: fontEmbedCss,

  //   //   style: {
  //   //     position: 'static',
  //   //     margin: '173 0 0 37'
  //   //   }
  //   // }

  //   // console.log('exportdata[0]', exportData[0]);

  //   if (isMobile) {

  //     console.log("1 files array: ", filesArray) 

  //     if (navigator.canShare && navigator.canShare({ files: filesArray })) {

  //       console.log("2 files array:", filesArray)

  //       navigator.share({
  //           title: `${storyName}'s Story`, 
  //           text: text,  
  //           url: document.location.href,
  //           files: filesArray
  //         })
  //         .then(() => {
  //           console.log('Successfully shared');
  //         })
  //         .catch(error => {
  //           console.error('Something went wrong sharing the image', error);
  //         });
  //     }
  //     else {

  //       htmlToImage.toJpeg(exportData[0], exportOptions)
  //         .then(function (dataUrl) {
  //           downloadjs(dataUrl, 'to-be-you-download-mobile.jpg');
  //         });

  //     }

  //     // htmlToImage.toBlob(exportData[0])
  //     //   .then(function (blob) {
  //     //     var file = new File([blob], 'to-be-you-shared-mobile.jpg', { type: blob.type })
  //     //     console.log(file)
  //     //     const filesArray = [file]
  //     //     console.log(filesArray)
  //     //     return filesArray

  //     // htmlToImage.toJpeg(exportData[0], exportOptions) // why not use htmlToImage.toJpeg(exportData[0],exportOptions)
  //       // .then(function (dataUrl) {
  //       //   var file = new File([dataUrl], 'to-be-you-shared.jpg')
  //       //   console.log(file)
  //       //   const filesArray = [file]
  //       //   console.log(filesArray)
  //       //   return filesArray
  //         // var link = document.createElement('a');
  //         // link.download = 'my-image-name.jpeg';
  //         // link.href = dataUrl;
  //         // link.click();
  //       // })
  //       // .then((filesArray) => {
  //       //   if (navigator.canShare && navigator.canShare({ files: filesArray })) {

  //       //     console.log("files array:"+filesArray)
    
  //       //     navigator.share({
  //       //         title: `${storyName}'s Story`, 
  //       //         text: text,  
  //       //         url: document.location.href,
  //       //         files: filesArray
  //       //       })
  //       //       .then(() => {
  //       //         console.log('Successfully shared');
  //       //       })
  //       //       .catch(error => {
  //       //         console.error('Something went wrong sharing the image', error);
  //       //       });
  //       //   }
  //         // else {

  //         //   htmlToImage.toJpeg(exportData[0], exportOptions)
  //         //     .then(function (dataUrl) {
  //         //       downloadjs(dataUrl, 'to-be-you-download-mobile.jpg');
  //         //     });

  //         // }
  //       // });

  //   }

  //   else {

  //     console.log("downloading image..") // to remove once lag issue is resolved
  //     htmlToImage.toJpeg(exportData[0], exportOptions)
  //           .then(function (dataUrl) {
  //             downloadjs(dataUrl, 'to-be-you-download-desktop.jpg');
  //             console.log("finished download!") // to remove once lag issue is resolved
  //           });

  //   }

  // }

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
    
    
      <button onClick={getImage}>{isMobile ? 'Share via Mobile' : 'Download Image'}</button>
      {/* <button onClick={loadImage}>Pre-load image</button> */}
      <img width={width} src={image} alt={"ScreenShot"} />
  </div>
  )};

export default ShareableImageContainer;