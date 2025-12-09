---Represents a linear RGBA color where each component is a 32-bit floating-point value.
---
---This reflects Unreal Engine's FLinearColor type, where values are not
---restricted to 0–1 and may exceed those bounds for HDR and post-processing effects.
---
---@class LinearColor
---@field public R number # Red channel (floating point, not clamped)
---@field public G number # Green channel (floating point, not clamped)
---@field public B number # Blue channel (floating point, not clamped)
---@field public A number # Alpha channel (floating point, not clamped)
local LinearColor = {}

---Converts this LinearColor to an FColor (8-bit per channel), using sRGB conversion if specified.
---
---When `P0` is true, the conversion applies sRGB gamma correction.
---When false, the conversion is treated as linear.
---
---@param P0 boolean # Whether to apply sRGB gamma correction during conversion.
---@return Color # The converted 8-bit per channel color.
function LinearColor:ToFColor(P0)
end

---Clamps each color channel to fall within the provided numeric range.
---
---This is useful for preventing runaway brightness or contrast when performing
---linear color math operations.
---
---@param P0 number # Minimum clamp value.
---@param P1 number # Maximum clamp value.
---@return LinearColor # Returns a clamped LinearColor (may be a new instance depending on implementation).
function LinearColor:Clamp(P0, P1)
end

return LinearColor
