---@class Callbacks
local Callbacks = {}

---Triggers a callback from server to client with a response handler
---@param source number Client source/player ID to send the callback to
---@param name string Callback name, optionally prefixed with package (e.g., "inventory:GetItems" or "GetItems")
---@param cb function Callback function to handle the client's response
---@param ... any Additional arguments to pass to the client callback
function TriggerClientCallback(source, name, cb, ...) end

---Registers a server-side callback that can be triggered by clients
---@param name string Callback name to register
---@param cb function Callback function with signature: function(source, ...) return result end
function RegisterCallback(name, cb) end
