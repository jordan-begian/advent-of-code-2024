local fileReader = require("utils.InputDataReader")
local inputDataPath = "./src/day1/input.txt"

local inputData = fileReader.getInputData(inputDataPath)
if not inputData then
  error("Failed to read input data from file: " .. inputDataPath)
end

local function extractLocationIds(rawLocationIdData)
  local table1 = {}
  local table2 = {}

  for _, locationId in ipairs(rawLocationIdData) do
    local num1, num2 = locationId:match("(%d+)%s+(%d+)")
    if num1 and num2 then
      table.insert(table1, tonumber(num1))
      table.insert(table2, tonumber(num2))
    end
  end
  return table1, table2
end

local function sortFindDifferenceAndSum(groupA, groupB)
  local sum = 0
  table.sort(groupA)
  table.sort(groupB)
  for index = 1, math.min(#groupA, #groupB) do
    sum = sum + math.abs(groupA[index] - groupB[index])
  end
  return sum
end

local locationIds1, locationIds2 = extractLocationIds(inputData)
print(
  "Total distance between lists: " ..
  sortFindDifferenceAndSum(locationIds1, locationIds2)
)
