---Represents a 2D vector using floating-point precision.
---
---Commonly used for screen-space coordinates, UI, 2D math,
---and gameplay systems that operate in a planar space.
---
---@class Vector2D
---@field public X number # Horizontal axis component
---@field public Y number # Vertical axis component
local Vector2D = {}

---Returns the dot product of this vector and another.
---
---Dot > 0 → facing similar direction
---Dot = 0 → perpendicular
---Dot < 0 → facing opposite direction
---
---@param P0 Vector2D # Other vector.
---@return number # Scalar dot product.
function Vector2D:Dot(P0)
end

---Returns the 2D cross product magnitude (Z component of a 3D cross).
---
---For 2D, the cross product is a scalar representing signed area.
---Positive = CCW, Negative = CW rotation.
---
---@param P0 Vector2D # Other vector.
---@return number # Signed magnitude of the cross product.
function Vector2D:Cross(P0)
end

---Returns the magnitude (length) of the vector.
---
---@return number # sqrt(X² + Y²)
function Vector2D:Size()
end

---Returns the squared magnitude (faster than Size).
---
---@return number # X² + Y²
function Vector2D:SizeSquared()
end

---Returns the distance between two 2D vectors.
---
---@param P0 Vector2D # First point.
---@param P1 Vector2D # Second point.
---@return number # Distance value.
function Vector2D.Dist(P0, P1)
end

---Returns the squared distance between two 2D vectors.
---
---@param P0 Vector2D # First point.
---@param P1 Vector2D # Second point.
---@return number # Squared distance.
function Vector2D.DistSquared(P0, P1)
end

return Vector2D
