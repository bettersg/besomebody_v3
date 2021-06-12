import React from 'react';
import REFLECTIONS from "../../reflections/reflections.json"

import ReflectionForm from './story/ReflectionForm';

const Reflection = ({ getStory, reflectionId }) => {
  const reflection = REFLECTIONS.find(reflection => reflection.id === reflectionId);
  return <ReflectionForm reflection={reflection} />;
}

export default Reflection;