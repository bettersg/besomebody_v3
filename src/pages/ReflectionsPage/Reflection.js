import React, { useMemo } from 'react';
import REFLECTIONS from "../../reflections/reflections.json"

import ReflectionForm from './shared/ReflectionForm';

const Reflection = ({ getStory, reflectionId }) => {
  const reflection = useMemo(
    () => REFLECTIONS.find(reflection => reflection.id === reflectionId),
    [reflectionId],
  );
  return <ReflectionForm reflection={reflection} />;
}

export default Reflection;