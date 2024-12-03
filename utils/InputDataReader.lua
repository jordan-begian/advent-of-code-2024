local fileReader = {}

function fileReader.getInputData(filePath)
  local file, error = io.open(filePath, "r")

  if not file then
    print("There was an issue opening file: " .. error)
    return nil
  end

  local content = {}
  for line in file:lines() do
    table.insert(content, line)
  end

  file:close()
  return content
end

return fileReader
