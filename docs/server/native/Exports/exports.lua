---@class Exports
local Exports = {}

---Registers an export function for the current package
---@param resourceName string The package name to register the export under (must match current package)
---@param exportName string The name of the export function
---@param fn function The function to export with signature: function(...) return ... end
---@usage exports("mypackage", "myFunction", function(arg1, arg2) return result end)
function exports(resourceName, exportName, fn) end

--- Calls an export function from another package
---@param resourceName string The package name containing the export
---@param exportName string The name of the export function to call
---@param ... any Arguments passed to the export function (supports UObject and nested tables)
---@return any Return values from the export function
---@usage exports["otherpackage"]:myFunction(arg1, arg2)
function exports.Invoke(resourceName, exportName, ...) end
