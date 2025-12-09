---Represents an orthogonal rotation in 3D space using Euler angles (Pitch, Yaw, Roll).
---
---Pitch: rotation around the Y-axis (degrees)
---Yaw:   rotation around the Z-axis (degrees)
---Roll:  rotation around the X-axis (degrees)
---
---While easier to visualize than quaternions, Rotators can be susceptible to gimbal lock.
---
---@class Rotator
---@field public Pitch number # Rotation around Y axis (degrees)
---@field public Yaw number # Rotation around Z axis (degrees)
---@field public Roll number # Rotation around X axis (degrees)
local Rotator = {}

---Normalizes Pitch, Yaw, and Roll so they remain within a valid angular range.
---
---Typically clamps to [-180, 180] or [0, 360] internally (implementation dependent).
function Rotator:Normalize()
end

---Returns a new Rotator whose components have been normalized.
---
---@return Rotator # A normalized copy of this Rotator.
function Rotator:GetNormalized()
end

---Rotates a vector using this Rotator.
---
---@param P0 FVector # The vector to rotate.
---@return FVector # Resulting vector after applying this rotation.
function Rotator:RotateVector(P0)
end

---Applies the inverse of this rotation to the vector.
---
---@param P0 FVector # The vector to unrotate.
---@return FVector # Result after inverse rotation.
function Rotator:UnrotateVector(P0)
end

---Clamps rotation values into a safe range.
---
---Usually used to limit pitch to avoid excessive up/down camera rotation.
---
---@return Rotator # The clamped Rotator (new or modified depending on implementation).
function Rotator:Clamp()
end

---Gets the forward direction vector (normalized) represented by this rotation.
---
---@return FVector # Forward (X+) direction.
function Rotator:GetForwardVector()
end

---Converts rotation to a direction vector.
---
---Alias of GetForwardVector() in most implementations.
---
---@return FVector # Direction vector.
function Rotator:ToVector()
end

---Returns Euler angles representation of this rotation.
---
---@return FVector # (Pitch, Yaw, Roll) in degrees.
function Rotator:ToEuler()
end

---Converts this Rotator into a Quaternion representation.
---
---@return FQuat # Equivalent quaternion rotation.
function Rotator:ToQuat()
end

---Returns the inverse of this rotation (negates rotations).
---
---@return Rotator # Rotator that reverses this rotation.
function Rotator:Inverse()
end

---Operator overload: Adds another Rotator’s components.
---
---@param P0 Rotator # Rotator to add.
---@return Rotator # Sum of component angles.
function Rotator:__add(P0)
end

---Operator overload: Subtracts another Rotator’s components.
---
---@param P0 Rotator # Rotator to subtract.
---@return Rotator # Difference of component angles.
function Rotator:__sub(P0)
end

---Operator overload: Scales this Rotator by a scalar multiplier.
---
---@param P0 number # Scalar multiplier.
---@return Rotator # Resulting scaled Rotator.
function Rotator:__mul(P0)
end

---Adds another Rotator to this one.
---
---@param P0 Rotator # Rotator to add.
---@return Rotator # Result after addition.
function Rotator:Add(P0)
end

---Subtracts another Rotator from this one.
---
---@param P0 Rotator # Rotator to subtract.
---@return Rotator # Result after subtraction.
function Rotator:Sub(P0)
end

---Multiplies rotation values by a scalar.
---
---@param P0 number # Scalar multiplier.
---@return Rotator # Result after scaling.
function Rotator:Mul(P0)
end
