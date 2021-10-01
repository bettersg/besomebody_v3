import React from 'react'
import ShareableImage from './ShareableImage'
import * as htmlToImage from 'html-to-image';
import downloadjs from "downloadjs";
// import {isMobile} from 'react-device-detect';  // for debug
import "./style.scss"

// format which Shareable image takes in data (dictionary):
// const data = {
//     id: 1, 
//     text: "I've just finished playing Chapter One of Nadia's Story!", 
//     avatar: 'nadia'}

const ShareableImageContainer = ({data }) =>{
  const { storyName, text, avatar, avatarImage } = data;
  const isMobile = true;  // for debug

  const exportAsPicture = () => {

    var exportData = document.getElementsByClassName('ShareableImage') // this is the problem. the element htmlToImageVis is null
    // console.log('exportdata ', exportData);
    var exportOptions = {
      width: 300,
      height: 300,
      canvasWidth: 300,
      canvasHeight: 300  
    }

    console.log('exportdata[0]', exportData[0]);

    if (isMobile) {

      htmlToImage.toJpeg(exportData[0], exportOptions) // why not use htmlToImage.toJpeg(exportData[0],exportOptions)
        .then(function (dataUrl) {
          // var file = new File([blob], 'to-be-you-shared.jpg', { type: 'image/jpeg' })
          // console.log(file)
          // const filesArray = [file]
          // console.log(filesArray)
          // return filesArray
          var link = document.createElement('a');
          link.download = 'my-image-name.jpeg';
          link.href = dataUrl;
          link.click();
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

            htmlToImage.toPng(exportData[0])
              .then(function (dataUrl) {
                downloadjs(dataUrl, 'to-be-you-shared.png');
              });

          }
        });

    }

    else {

      console.log("downloading image..") // to remove once lag issue is resolved
      htmlToImage.toPng(exportData[0])
            .then(function (dataUrl) {
              downloadjs(dataUrl, 'to-be-you-shared.png');
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