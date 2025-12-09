---Represents a point or directional vector in 3D space.
---
---Can be used for:
---• Positioning (as a point)
---• Movement and offsets
---• Directional math (normals, cross products, dot products)
---
---@class Vector
---@field public X number # X coordinate / axis value
---@field public Y number # Y coordinate / axis value
---@field public Z number # Z coordinate / axis value
local Vector = {}

---Computes the dot product between this vector and another.
---
---Dot > 0 → pointing roughly same direction.
---Dot = 0 → orthogonal.
---Dot < 0 → pointing opposite.
---
---@param P0 Vector # Other vector.
---@return number # Scalar dot product result.
function Vector:Dot(P0)
end

---Computes the cross product of this vector and another.
---
---Resulting vector is orthogonal (perpendicular) to both inputs.
---
---@param P0 Vector # Other vector.
---@return Vector # Perpendicular vector with magnitude = area of parallelogram formed.
function Vector:Cross(P0)
end

---Returns magnitude (length) of the vector.
---
---@return number # sqrt(X² + Y² + Z²)
function Vector:Size()
end

---Returns the 2D magnitude based on X and Y only.
---
---@return number # sqrt(X² + Y²)
function Vector:Size2D()
end

---Returns squared magnitude (cheaper than Size()).
---
---@return number # X² + Y² + Z²
function Vector:SizeSquared()
end

---Returns squared magnitude in 2D (ignores Z).
---
---@return number # X² + Y²
function Vector:SizeSquared2D()
end

---Returns distance between two points.
---
---@param P0 Vector # First point.
---@param P1 Vector # Second point.
---@return number # Distance value.
function Vector.Dist(P0, P1)
end

---Returns 2D distance (ignoring Z).
---
---@param P0 Vector
---@param P1 Vector
---@return number
function Vector.Dist2D(P0, P1)
end

---Returns squared distance (performance optimization).
---
---@param P0 Vector
---@param P1 Vector
---@return number
function Vector.DistSquared(P0, P1)
end

---Returns squared distance in 2D only.
---
---@param P0 Vector
---@param P1 Vector
---@return number
function Vector.DistSquared2D(P0, P1)
end

---Returns true if this vector is normalized (unit length).
---
---@return boolean # True if magnitude ≈ 1.
function Vector:IsNormalized()
end

---Returns the cosine of the angle between this and another vector (2D).
---
---cos(theta) = Dot / (|A| * |B|)
---
---@param P0 Vector # Other vector.
---@return number # cos of angle between vectors.
function Vector:CosineAngle2D(P0)
end

---Rotates vector by angle around an axis.
---
---Useful for orbit, yaw rotation, or procedural animation.
---
---@param P0 number # Angle in degrees.
---@param P1 Vector # Axis of rotation (typically normalized).
---@return Vector # Rotated vector.
function Vector:RotateAngleAxis(P0, P1)
end

---Converts this vector's direction into a Rotator (pitch,yaw,roll).
---
---@return FRotator # Rotation facing this direction.
function Vector:ToRotator()
end

---Converts this vector into a quaternion that rotates forward to match this direction.
---
---@return FQuat # Rotation quaternion.
function Vector:ToQuat()
end

return Vector
