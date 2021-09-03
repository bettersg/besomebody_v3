import GeneratedImage from './GeneratedImage'
import * as htmlToImage from 'html-to-image';
import downloadjs from "downloadjs";

// format which Shareable image takes in data (dictionary):
// const data = {
//     id: 1, 
//     text: "I've just finished playing Chapter One of Nadia's Story!", 
//     avatar: avatar}

const ShareableImage = ({data,  }) =>{

  const exportAsPicture = () => {

    var exportData = document.getElementsByClassName('htmlToImageVis')

    for (var i = 0; i < exportData.length; ++i){

        htmlToImage.toPng(exportData[i])
          .then(function (dataUrl) {
            downloadjs(dataUrl, 'to-be-you-shared.png');
          });
      }

  }

  return <div>
      <h1>Share your experience playing To Be You!</h1>
      <GeneratedImage imageData={data} className="htmlToImageVis"/>
        <button onClick={exportAsPicture}>Download</button>
  </div>
};

export default ShareableImage;