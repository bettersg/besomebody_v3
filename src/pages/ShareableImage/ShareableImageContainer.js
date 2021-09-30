import React from 'react'
import ShareableImage from './ShareableImage'
import * as htmlToImage from 'html-to-image';
import downloadjs from "downloadjs";
import {isMobile} from 'react-device-detect';
import "./style.scss"

// format which Shareable image takes in data (dictionary):
// const data = {
//     id: 1, 
//     text: "I've just finished playing Chapter One of Nadia's Story!", 
//     avatar: 'nadia'}

const ShareableImageContainer = ({data }) =>{
  const {storyName, text, avatar, avatarImage} = data;

  const exportAsPicture = () => {

    var exportData = document.getElementsByClassName('htmlToImageVis')

    if (isMobile) {

      htmlToImage.toBlob(exportData[0])
        .then(function (blob) {
          var file = new File([blob], 'to-be-you-shared.jpg', { type: 'image/jpeg' })
          console.log(file)
          const filesArray = [file]
          console.log(filesArray)
          return filesArray
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
      <h1>Share your experience playing To Be You!</h1>
      <ShareableImage imageData={data} className="htmlToImageVis"/>
      <div className="ShareableImageBorder"></div>
      <button onClick={exportAsPicture}>Share</button>
  </div>
};

export default ShareableImageContainer;