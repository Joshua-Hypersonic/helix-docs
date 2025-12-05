---@class Callbacks
local Callbacks = {}

---Triggers a callback from client to server with a response handler
---@param name string Callback name, optionally prefixed with package (e.g., "inventory:GetItems" or "GetItems")
---@param cb function Callback function to handle the server's response
---@param ... any Additional arguments to pass to the server callback
function TriggerCallback(name, cb, ...) end

---Registers a client-side callback that can be triggered by the server
---@param name string Callback name to register
---@param cb function Callback function with signature: function(...) return result end
function RegisterClientCallback(name, cb) end
