---@class Events
local Events = {}

---Registers a server-side event handler
---@param name string Event name to register
---@param fn function Event handler function with signature: function(controller, ...)
function RegisterServerEvent(name, fn) end

---Triggers a client event from the server to a specific player
---@param targetController AHPlayerController The player controller to send the event to
---@param eventName string Name of the client event to trigger
---@param ... any Arguments to pass to the client event handler (supports UObject references and nested tables)
function TriggerClientEvent(targetController, eventName, ...) end

---Broadcasts an event to all connected players
---@param eventName string Name of the client event to broadcast
---@param ... any Arguments to pass to all client event handlers (supports UObject references and nested tables)
function BroadcastEvent(eventName, ...) end

---Triggers a local server event (server-side only, no network replication)
---@param eventName string Name of the local server event to trigger
---@param ... any Arguments to pass to the event handler
function TriggerLocalServerEvent(eventName, ...) end
