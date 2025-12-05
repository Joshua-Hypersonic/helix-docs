---@class WebUI
---@param name string
---@param path string
---@param inputMode number
---@return table
function WebUI(name, path, inputMode) end

function WebUI:BringToFront() end

---@param order number
function WebUI:SetStackOrder(order) end

---@param inputMode number
function WebUI:SetInputMode(inputMode) end

function WebUI:Destroy() end

---@param eventName string
---@param ... any
function WebUI:SendEvent(eventName, ...) end

---@param eventName string
---@param callback function
function WebUI:RegisterEventHandler(eventName, callback) end

---@return boolean
function WebUI:IsReady() end
