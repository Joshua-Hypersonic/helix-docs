---@class Notification
local Notification = {}

---Creates a popup notification widget on the player's HUD
---@param text string The text to display in the notification
---@param delay number @[opt] Duration in seconds before the notification fades out (default: 1.0)
---@param position string @[opt] Position preset (NotificationPosition.center / top_right / bottom_right / bottom_left / top_left)
---@usage Notification("Hello World!", 2.0, "top_right")
function Notification(text, delay, position) end
