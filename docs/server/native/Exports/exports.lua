---@class Exports
local Exports = {}

---Registers an export function for the current package
---@param resourceName string The package name to register the export under (must match current package)
---@param exportName string The name of the export function
---@param fn function The function to export with signature: function(...) return ... end
---@usage exports("mypackage", "myFunction", function(arg1, arg2) return result end)
function exports(resourceName, exportName, fn) end

---Calls an export function from another package
---@param resourceName string The package name containing the export
---@param exportName string The name of the export function to call
---@param ... any Arguments to pass to the export function (supports UObject references and nested tables)
---@return any Returns the values returned by the export function
---@usage local result = exports["otherpackage"]:myFunction(arg1, arg2)
function exports[resourceName]:exportName(...) end