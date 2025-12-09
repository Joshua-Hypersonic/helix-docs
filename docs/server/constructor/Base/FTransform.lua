---Represents a full 3D transformation made of Rotation (Quat), Translation (Vector), and Scale (Vector3).
---
---This structure mirrors Unreal Engine's FTransform and allows combining,
---applying, and reversing spatial transformations in 3D space.
---
---Rotation   = Applied first   (local space)
---Scale3D    = Applied second
---Translation = Applied last
---
---@class Transform
---@field public Rotation FQuat # Rotation component as a quaternion.
---@field public Translation FVector # Translation component (units in world/local).
---@field public Scale3D FVector # Non-uniform scale applied in local space.
local Transform = {}

---Returns the inverse of this Transform.
---
---Inverse order: unscale → unrotate → untranslate.
---Useful for converting world positions back into local space.
---
---@return Transform # The inverted transformation.
function Transform:Inverse()
end

---Transforms a point (position) by this Transform (including rotation, translation, and scale).
---
---@param P0 FVector # The point to transform.
---@return FVector # The transformed point.
function Transform:TransformPosition(P0)
end

---Transforms a position by this Transform without applying scale.
---
---@param P0 FVector # The point to transform.
---@return FVector # Rotated + Translated point (no scale applied).
function Transform:TransformPositionNoScale(P0)
end

---Applies the inverse of this Transform to a position.
---
---@param P0 FVector # Point in world space.
---@return FVector # Point converted to this Transform's local space.
function Transform:InverseTransformPosition(P0)
end

---Inverse transforms a position but ignores scale.
---
---@param P0 FVector # Point in world space.
---@return FVector # Local space position without scale considered.
function Transform:InverseTransformPositionNoScale(P0)
end

---Transforms a vector (direction) using rotation and scale (no translation applied).
---
---@param P0 FVector # The vector to transform.
---@return FVector # The transformed vector.
function Transform:TransformVector(P0)
end

---Transforms a vector ignoring scale (rotation only).
---
---@param P0 FVector # The vector to rotate.
---@return FVector # Rotated vector (scale ignored).
function Transform:TransformVectorNoScale(P0)
end

---Applies the inverse transform to a direction vector (rotation and scale reversed).
---
---@param P0 FVector # Vector in world space.
---@return FVector # Local space direction vector.
function Transform:InverseTransformVector(P0)
end

---Inverse transforms a vector but ignores scale.
---
---@param P0 FVector # Vector in world space.
---@return FVector # Local space direction (rotation only).
function Transform:InverseTransformVectorNoScale(P0)
end

---Transforms a quaternion rotation by this Transform’s rotation (scale ignored).
---
---@param P0 FQuat # Rotation to transform.
---@return FQuat # Resulting rotated quaternion.
function Transform:TransformRotation(P0)
end

---Inverse-transforms a quaternion rotation by reversing this Transform’s rotation.
---
---@param P0 FQuat # World-space quaternion.
---@return FQuat # Local space rotation.
function Transform:InverseTransformRotation(P0)
end

---Operator overload: combines (composes) two transforms.
---
---Order matters: `A + B` means apply A, then apply B.
---Combines scale → rotation → translation hierarchically.
---
---@param P0 Transform # The second transform to combine.
---@return Transform # The resulting composed transform.
function Transform:__add(P0)
end

---Combines this Transform with another.
---
---@param P0 Transform # Transform to add/combine.
---@return Transform # Result after combination.
function Transform:Add(P0)
end

return Transform
