const formatString = (template, values) => {
  return template.replace(/{([a-zA-Z_]+)}/g, (match, field) => { 
    return values?.[field] != null
      ? values?.[field]
      : match
    ;
  });
};

export default formatString;
