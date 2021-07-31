import Music1 from './tobeyou_intro.mp3'
// import Music2 from './tobeyou_outro_long.mp3'
import React, { useState } from 'react'
import Button from '@material-ui/core/Button';
import MusicNoteIcon from '@material-ui/icons/MusicNote';
import MusicOffIcon from '@material-ui/icons/MusicOff';

// import Sound from 'react-sound'
import ReactAudioPlayer from 'react-audio-player';


const AudioPlayer = ({ Music }) => {
  const [isPlaying, setPlaying] = useState(true)


  if (Music == null) {
    Music = Music1;
  }

  const togglePlaying = () => {
    if (!isPlaying) {
      document.getElementById('audioplayer').play();
      setPlaying(true);
    }
    else {
      document.getElementById('audioplayer').pause();
      setPlaying(false)
    }
  }
  

  // let hasMouse = false;
  // console.log ('before move' + hasMouse)
  // const hasMouseCheck = () => {
  //     hasMouse = true;
  //     // Kill the event listener, so it executes only once
  //   window.removeEventListener('mousemove', hasMouseCheck, false);
  //   console.log('after move' + hasMouse);
  //   document.getElementById('audioplayer').play()
  // };
  // window.addEventListener('mousemove', hasMouseCheck, false);
  

  // function()
  // {
  //   this.refs.audioEl.pause();
  //   this.refs.audioEl.currentTime = 0;
  //   this.refs.audioEl.play();
  // }
  // render(){
  //   return (
  //     <ReactAudioPlayer src="sounds/beep.wav" ref={(element) => { this.refs = element; }} autoPlay />
  //   )
  // }



  return (
    <>
      <Button onClick={() => togglePlaying() }   style={{ position: 'absolute', top: 0, left: 0, color:'rgba(102,78,252,0.5)' }}> {isPlaying ? <MusicNoteIcon /> : <MusicOffIcon />  }</Button>
      <ReactAudioPlayer
        src={Music}
        autoPlay={isPlaying}          
        preload={'metadata'}
        loop 
      
        id='audioplayer'
      />
    
    </>   
);
}

export default AudioPlayer;