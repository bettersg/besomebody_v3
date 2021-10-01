import React from 'react'
import ShareableImage from './ShareableImage'
import * as htmlToImage from 'html-to-image';
import downloadjs from "downloadjs";
// import {isMobile} from 'react-device-detect';
import "./style.scss"

// format which Shareable image takes in data (dictionary):
// const data = {
//     id: 1, 
//     text: "I've just finished playing Chapter One of Nadia's Story!", 
//     avatar: 'nadia'}

const ShareableImageContainer = ({data }) =>{
  const { storyName, text, avatar, avatarImage } = data;
  const isMobile = true; // for debug

  const exportAsPicture = async () => {

    var exportData = document.getElementsByClassName('ShareableImage') // this is the problem. the element htmlToImageVis is null

    const position = exportData[0].getBoundingClientRect();
    // console.log("position", position)

    const fontEmbedCss = await htmlToImage.getWebFontEmbedCss(exportData[0]);

    var exportOptions = {
      width: position.width,
      height: position.height,
      fontEmbedCss: fontEmbedCss,

      style: {
        position: 'static',
        margin: '173 0 0 37'
      }
    }

    console.log('exportdata[0]', exportData[0]);

    if (isMobile) {

      htmlToImage.toBlob(exportData[0])
        .then(function (blob) {
          var file = new File([blob], 'to-be-you-shared.jpg', { type: 'image/jpeg' })
          console.log(file)
          const filesArray = [file]
          console.log(filesArray)
          return filesArray

      // htmlToImage.toJpeg(exportData[0], exportOptions) // why not use htmlToImage.toJpeg(exportData[0],exportOptions)
        // .then(function (dataUrl) {
        //   var file = new File([dataUrl], 'to-be-you-shared.jpg')
        //   console.log(file)
        //   const filesArray = [file]
        //   console.log(filesArray)
        //   return filesArray
          // var link = document.createElement('a');
          // link.download = 'my-image-name.jpeg';
          // link.href = dataUrl;
          // link.click();
        })
        .then((filesArray) => {
          if (navigator.canShare && navigator.canShare({ files: filesArray })) {

            console.log("files array:"+filesArray)
    
            navigator.share({
                title: `${storyName}'s Story`, 
                text: text,  
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
          else {

            htmlToImage.toJpeg(exportData[0], exportOptions)
              .then(function (dataUrl) {
                downloadjs(dataUrl, 'to-be-you-shared.jpg');
              });

          }
        });

    }

    else {

      console.log("downloading image..") // to remove once lag issue is resolved
      htmlToImage.toJpeg(exportData[0], exportOptions)
            .then(function (dataUrl) {
              downloadjs(dataUrl, 'to-be-you-shared.jpg');
              console.log("finished download!") // to remove once lag issue is resolved
            });

    }

  }

  return <div>
      <h1 className="testingThisOut">Share your experience playing To Be You!</h1>
      <ShareableImage imageData={data} className="htmlToImageVis" id="htmlToImageVis"/>
      <div className="ShareableImageBorder"></div>
      <button onClick={exportAsPicture}>Share</button>
  </div>
};

export default ShareableImageContainer;