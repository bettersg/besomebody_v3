import Music1 from './To Be You_music v2_loop 1.wav'
import Music2 from './To Be You_music v2_loop 2.wav'
import Music3 from './To Be You_music v2_loop 3.wav'
import React from 'react'
import Sound from 'react-sound'


class AudioPlayer extends React.Component {
  render() {
    return (
        <Sound
            url={Music1}
            playStatus={Sound.status.PLAYING}
            volume={100}
            loop={true}
            />
    );
  }
}

export default AudioPlayer;