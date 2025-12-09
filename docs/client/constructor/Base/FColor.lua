---Represents a color using 8-bit per-channel precision in BGRA format.
---This class reflects the standard Unreal Engine FColor structure.
---
---The values of B, G, R, and A are integers in the range 0–255 and
---represent the Blue, Green, Red, and Alpha (opacity) components respectively.
---
---@class Color
---@field public B integer # Blue channel (0–255)
---@field public G integer # Green channel (0–255)
---@field public R integer # Red channel (0–255)
---@field public A integer # Alpha channel (0–255, 0 = fully transparent, 255 = fully opaque)
local Color = {}

---Adds the component values of the target Color to this one.
---If summed values exceed 255 they are usually expected to be clamped externally.
---
---@param P0 Color # Another Color instance whose channel values will be added.
---@return Color self # Returns itself after modification for chaining.
function Color:Add(P0)
end

---Converts this Color (BGRA) into a floating-point linear space color representation.
---This corresponds to Unreal Engine’s FLinearColor.
---
---@return FLinearColor # The resulting linear color with values typically in 0.0–1.0 range (or higher for HDR).
function Color:ToLinearColor()
end

return Color
