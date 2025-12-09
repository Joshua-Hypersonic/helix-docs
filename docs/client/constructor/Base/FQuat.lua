---Represents a quaternion used to encode 3D rotations with minimal floating-point error.
---
---Quaternions avoid gimbal lock and are preferred over Euler angles for smooth
---interpolation and complex rotational math.
---
---@class Quat
---@field public X number # X component of the quaternion
---@field public Y number # Y component of the quaternion
---@field public Z number # Z component of the quaternion
---@field public W number # W component (scalar part)
local Quat = {}

---Returns a normalized version of this quaternion (length = 1).
---
---If the quaternion is already normalized, this may return a copy unchanged.
---
---@param P0 number # Optional tolerance to compare magnitude against (implementation dependent).
---@return Quat # A unit-length normalized quaternion.
function Quat:GetNormalized(P0)
end

---Checks whether this quaternion is already normalized.
---
---Useful before interpolation or converting to rotation transforms.
---
---@return boolean # True if quaternion length is approximately 1.
function Quat:IsNormalized()
end

---Returns the magnitude (length) of the quaternion.
---
---@return number # The square root of (X² + Y² + Z² + W²).
function Quat:Size()
end

---Returns the squared magnitude of the quaternion.
---
---Faster than Size() because it avoids performing a square root.
---
---@return number # The value (X² + Y² + Z² + W²).
function Quat:SizeSquared()
end

---Converts the quaternion to axis-angle rotation representation.
---
---Outputs:
---P0 = a normalized axis of rotation (FVector)
---P1 = rotation angle in radians
---
---@param P0 FVector @[out] # Output axis of rotation
---@param P1 number @[out] # Output angle in radians
function Quat:ToAxisAndAngle(P0, P1)
end

---Returns the inverse of this quaternion.
---
---For unit quaternions, this is equivalent to conjugation.
---
---@return Quat # The inverted quaternion that reverses the encoded rotation.
function Quat:Inverse()
end

---Rotates a vector by this quaternion.
---
---@param P0 FVector # The vector to rotate.
---@return FVector # The rotated vector result.
function Quat:RotateVector(P0)
end

---Applies the inverse rotation of this quaternion to a vector.
---
---@param P0 FVector # The vector to unrotate.
---@return FVector # The resulting vector after inverse rotation.
function Quat:UnrotateVector(P0)
end

---Gets the local X axis (forward/right/up depends on orientation).
---
---@return FVector # The X-axis direction rotated by this quaternion.
function Quat:GetAxisX()
end

---Gets the local Y axis direction.
---
---@return FVector # The Y-axis direction rotated by this quaternion.
function Quat:GetAxisY()
end

---Gets the local Z axis direction.
---
---@return FVector # The Z-axis direction rotated by this quaternion.
function Quat:GetAxisZ()
end

---Gets the forward vector based on quaternion rotation.
---
---@return FVector # Unit vector pointing forward after rotation.
function Quat:GetForwardVector()
end

---Gets the right vector based on quaternion rotation.
---
---@return FVector # Unit vector pointing right after rotation.
function Quat:GetRightVector()
end

---Gets the upward vector based on quaternion rotation.
---
---@return FVector # Unit vector pointing upward after rotation.
function Quat:GetUpVector()
end

---Spherically interpolates between two quaternions.
---
---Smooth interpolation ideal for camera motions/animation.
---
---@param P0 Quat # Starting quaternion
---@param P1 Quat # Ending quaternion
---@param P2 number # Interpolation alpha (0–1)
---@return Quat # The spherical interpolated quaternion.
function Quat.Slerp(P0, P1, P2)
end

---Returns Euler angle representation (pitch, yaw, roll in degrees).
---
---@return FVector # A vector containing (Pitch, Yaw, Roll).
function Quat:ToEuler()
end

---Converts quaternion to Unreal-style FRotator.
---
---@return FRotator # The equivalent rotation angles.
function Quat:ToRotator()
end

---Operator overload: quaternion addition.
---
---@param P0 Quat # Quaternion to add.
---@return Quat # The sum result.
function Quat:__add(P0)
end

---Operator overload: quaternion subtraction.
---
---@param P0 Quat # Quaternion to subtract.
---@return Quat # The result difference.
function Quat:__sub(P0)
end

---Operator overload: divide quaternion by scalar.
---
---@param P0 number # Scalar divisor.
---@return Quat # Scaled quaternion.
function Quat:__div(P0)
end

---Adds another quaternion's components to this one.
---
---@param P0 Quat # Quaternion to add.
---@return Quat # Result after addition.
function Quat:Add(P0)
end

---Subtracts another quaternion's components from this one.
---
---@param P0 Quat # Quaternion to subtract.
---@return Quat # Result after subtraction.
function Quat:Sub(P0)
end

---Divides this quaternion by the given scalar.
---
---@param P0 number # Scalar value.
---@return Quat # Resulting quaternion after division.
function Quat:Div(P0)
end
