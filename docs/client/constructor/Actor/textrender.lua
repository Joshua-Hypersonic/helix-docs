---@class TextRender
---@param Location FVector World position
---@param Rotation FRotator World orientation
---@param Text string Displayed text
---@param Scale FVector Text scale
---@param Color FColor Text color
---@param FontParam enum FontType enum or font asset
---@return table Wrapper with .Object and .Component
function TextRender(Location, Rotation, Text, Scale, Color, FontParam) end
