checkData(field, jsonData, defaultValue) {
  if(jsonData[field] == null) {
    return defaultValue;
  }

  return jsonData[field];
}
