import Music1 from './tobeyou_intro.mp3'
import React from 'react'
import Sound from 'react-sound'
import ReactAudioPlayer from 'react-audio-player';


class AudioPlayer extends React.Component {
  render() {
    return (
        <ReactAudioPlayer
          src={Music1}
          autoPlay={true}
          preload={'metadata'}
          loop={true}
        />
        // <Sound
        //     url={Music1}
        //     playStatus={Sound.status.PLAYING}
        //     volume={100}
        //     loop={true}
        //     autoLoad={true}
        //     />
    );
  }
}

export default AudioPlayer;