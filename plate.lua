-- █▀▀ █▀ ▀▄▀   ▄▀█ █▄░█ █▀▄   █▀█ █▄▄ █▀▀ █▀█ █▀█ █▀▀
-- ██▄ ▄█ █░█   █▀█ █░▀█ █▄▀   ▀▀█ █▄█ █▄▄ █▄█ █▀▄ ██▄

local letters = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}

local plate = ""
local numLetters = math.random(1, 3)
for i=1,numLetters do
    local letterIndex = math.random(1, #letters)
    plate = plate .. letters[letterIndex]
end

local numDigits = math.random(1, 5)
for i=1,numDigits do
    local digit = tostring(math.random(0, 9))
    plate = plate .. digit
end

-- Shuffle the plate string randomly
local plateTable = {}
for i=1,#plate do
    table.insert(plateTable, plate:sub(i, i))
end
for i=#plateTable,2,-1 do
    local j = math.random(i)
    plateTable[i], plateTable[j] = plateTable[j], plateTable[i]
end

plate = table.concat(plateTable)

-- Add leading zeros if necessary
if #plate < 7 then
    plate = string.rep("0", 7-#plate) .. plate
end

print(plate)

-- █▀█ █▄▄ █▀▀ █▀█ █▀█ █▀▀
-- ▀▀█ █▄█ █▄▄ █▄█ █▀▄ ██▄

SetDefaultVehicleNumberPlateTextPattern(-1, Config.CustomAIPlates)