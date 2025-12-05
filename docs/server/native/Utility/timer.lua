---@class Timer

---@param callback function
---@param ... any
---@return number
function Timer.SetNextTick(callback, ...) end

---@param callback function
---@param delay_ms number
---@param ... any
---@return number
function Timer.SetTimeout(callback, delay_ms, ...) end

---@param callback function
---@param interval_ms number
---@param ... any
---@return number
function Timer.SetInterval(callback, interval_ms, ...) end

---@param id number
function Timer.ClearTimeout(id) end

---@param id number
function Timer.ClearInterval(id) end

---@param id number
function Timer.Pause(id) end

---@param id number
function Timer.Resume(id) end

---@param id number
---@return boolean
function Timer.IsValid(id) end

---@param id number
---@return boolean
function Timer.IsPaused(id) end

---@param id number
---@return number
function Timer.GetElapsedTime(id) end

---@param id number
---@return number
function Timer.GetRemainingTime(id) end

---@param id number
function Timer.Invalidate(id) end

---@param id number
---@return boolean
function Timer.HasHandle(id) end

---@param id number
---@return number|nil
function Timer.ResetElapsedTime(id) end

---@param context UObject
---@param duration number
---@param callback function
function Timer.Delay(context, duration, callback) end

---@param fn function
function Timer.CreateThread(fn) end

---@param ms number
function Timer.Wait(ms) end
