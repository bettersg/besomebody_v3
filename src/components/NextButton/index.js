import React, { useEffect, useCallback } from 'react'

//* Stylesheet
import "./style.scss"

const NextButton = (props) => {
    const { getStory } = props

    // Trigger next on right arrow key
    const handleUserKeyPress = useCallback((event) => {
      const { key } = event;
      if (key === 'ArrowRight') getStory()
    }, [getStory]);
    useEffect(() => {
      window.addEventListener("keydown", handleUserKeyPress);
      return () => {
        window.removeEventListener("keydown", handleUserKeyPress);
      };
    }, [handleUserKeyPress]);

    return <div className="next-button" onClick={getStory} />
}

export default NextButton
