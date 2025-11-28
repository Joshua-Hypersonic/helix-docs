---@class UDatabase : UObject
local UDatabase = {}

---@param Query string
---@param Parameters TArray_string_
---@param Callback Delegate
function UDatabase:SelectAsync(Query, Parameters, Callback) end

---@param Query string
---@param Parameters TArray_string_
---@return TArray_FSQLiteRow_
function UDatabase:Select(Query, Parameters) end

---@param DatabasePath string
---@return boolean
function UDatabase:Open(DatabasePath) end

---@param Query string
---@param Parameters TArray_string_
---@param Callback Delegate
function UDatabase:ExecuteAsync(Query, Parameters, Callback) end

---@param Query string
---@param Parameters TArray_string_
---@return boolean
function UDatabase:Execute(Query, Parameters) end

function UDatabase:Close() end

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function UDatabase:GetModuleName() end

