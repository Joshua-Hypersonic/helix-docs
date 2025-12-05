---@class Input
local Input = {}

---Binds a key press or release to a callback function
---@param Key string The key name to bind (e.g., "E", "LeftMouseButton", "SpaceBar")
---@param Action function Callback function with signature: function(key) where key contains .KeyName
---@param ListenerType string @[opt] "Pressed" or "Released" (default: "Pressed")
---@usage Input.BindKey("E", function(key) print("E pressed") end, "Pressed")
function Input.BindKey(Key, Action, ListenerType) end

---Registers a new input action at runtime and binds it to a key
---@param Name string Unique name for the input action
---@param DefaultKey string Default key binding (e.g., "E", "F", "LeftMouseButton")
---@param Action function Callback function to execute when the action is triggered
---@param Description string @[opt] Description for the input action (default: "Lua Action | Default Key: {DefaultKey}")
---@return boolean Whether the action was successfully registered
---@usage Input.RegisterAction("OpenDoor", "E", function() print("Door opened") end, "Opens nearby doors")
function Input.RegisterAction(Name, DefaultKey, Action, Description) end
