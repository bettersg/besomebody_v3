import React, { useEffect, useCallback } from 'react'

//* Stylesheet
import "./style.scss"

const NextButton = (props) => {
    const { getStory, className } = props

    // Trigger next on right arrow key
    const handleUserKeyPress = useCallback((event) => {
      const { key } = event;
      if (key === 'ArrowRight' || 'Space') getStory()
    }, [getStory]);
    useEffect(() => {
      window.addEventListener("keydown", handleUserKeyPress);
      return () => {
        window.removeEventListener("keydown", handleUserKeyPress);
      };
    }, [handleUserKeyPress]);

    return <div className={`next-button ${className}`} onClick={getStory} />
}

export default NextButton
