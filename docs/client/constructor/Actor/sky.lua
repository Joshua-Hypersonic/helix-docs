---@class Sky
---Creates and manages a sky + weather system using Ultra Dynamic Sky and Ultra Dynamic Weather.
---Automatically spawns actors if they do not exist in the world, and exposes functions
---for configuring moon, sun, sky, clouds, time progression, and weather.
---@return table Wrapper providing SkyActor and WeatherActor access (UDS & UDW actors)
function Sky() end

---@param tex UTexture2D Moon texture asset
function Sky:SetMoonTexture(tex) end

---@param rot number Degrees to rotate the moon texture
function Sky:SetMoonTextureRotation(rot) end

---@param off number Vertical offset of moon
function Sky:SetMoonVerticalOffset(off) end

---@param s number Scale of the moon mesh/texture
function Sky:SetMoonScale(s) end

---@param p number Phase value (0–1)
function Sky:SetMoonPhase(p) end

---@param i number Glow intensity strength (default engine-handled)
function Sky:SetMoonGlowIntensity(i) end

---@param i number Moon directional light intensity
function Sky:SetMoonLightIntensity(i) end

---@param color FLinearColor Color of moon light
function Sky:SetMoonColor(color) end

---@param bool boolean Enables aurora visual effects
function Sky:EnableAurora(bool) end

---@param r number Sun radius / scale
function Sky:SetSunRadius(r) end

---@param i number Sun directional light intensity
function Sky:SetSunLightIntensity(i) end

---@param m any Sky mode enum value
function Sky:SetSkyMode(m) end

---@param c FLinearColor Volumetric cloud color tint
function Sky:SetVolumetricCloudColor(c) end

---@param cov number Cloud coverage percent (0–1)
function Sky:SetCloudCoverage(cov) end

---@param f number Fog level/density
function Sky:SetFog(f) end

---@param ct number Visual contrast adjustment
function Sky:SetContrast(ct) end

---@param i number Overall sky system brightness
function Sky:SetOverallIntensity(i) end

---@param nb number Night brightness intensity
function Sky:SetNightBrightness(nb) end

---@param enabled boolean Enables animated time progression
function Sky:SetAnimateTimeOfDay(enabled) end

---@param t number Time of day value (0–2400)
function Sky:SetTimeOfDay(t) end

---@return number Current time of day
function Sky:GetTimeOfDay() end

---@return WeatherType Current weather enum value
function Sky:GetWeather() end

---@param newWeather WeatherType New weather enum (e.g., WeatherType.Rain)
---@param transitionTime number Optional transition time in seconds (default: 0)
function Sky:ChangeWeather(newWeather, transitionTime) end
