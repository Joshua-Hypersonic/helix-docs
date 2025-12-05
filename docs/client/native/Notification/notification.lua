---@class Notification
local Notification = {}

---Notification position enumeration for positioning popups on screen
---@class NotificationPosition
---@field center string Center of the screen
---@field top_right string Top right corner
---@field bottom_right string Bottom right corner
---@field bottom_left string Bottom left corner
---@field top_left string Top left corner

---Creates a popup notification widget on the player's HUD
---@param text string The text to display in the notification
---@param delay number @[opt] Duration in seconds before the notification fades out (default: 1.0)
---@param position string @[opt] Position preset from NotificationPosition (default: "center")
---@usage Notification("Hello World!", 2.0, "top_right")
function Notification(text, delay, position) end
