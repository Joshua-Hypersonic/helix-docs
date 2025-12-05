---@class JSON
local JSON = {}

---Converts a Lua table to a JSON string
---@param table table The Lua table to convert to JSON
---@param ... any @[opt] Additional encoding options passed to rapidjson (default: nil)
---@return string JSON string representation of the table
---@usage local jsonStr = JSON.stringify({name = "John", age = 30})
function JSON.stringify(table, ...) end

---Parses a JSON string into a Lua table
---@param jsonString string The JSON string to parse
---@return table Lua table representation of the JSON data
---@usage local data = JSON.parse('{"name":"John","age":30}')
function JSON.parse(jsonString) end
