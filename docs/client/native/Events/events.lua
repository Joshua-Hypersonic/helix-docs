---@class Events
local Events = {}

---Registers a client-side event handler
---@param name string Event name to register
---@param fn function Event handler function with signature: function(...)
function RegisterClientEvent(name, fn) end

---Triggers a server event from the client
---@param eventName string Name of the server event to trigger
---@param ... any Arguments to pass to the server event handler (supports UObject references and nested tables)
function TriggerServerEvent(eventName, ...) end

---Triggers a local client event (client-side only, no network replication)
---@param eventName string Name of the local client event to trigger
---@param ... any Arguments to pass to the event handler
function TriggerLocalClientEvent(eventName, ...) end
