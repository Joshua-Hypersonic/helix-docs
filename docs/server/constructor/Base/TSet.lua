---@class TSet<TElement>
local TSet = {}

---Get the number of items in set.
---@return integer
function TSet:Length()
end

---Get the number of items in set.
---@return integer
function TSet:Num()
end

---Adds item to set
---@param NewItem TElement @The item to add to the set
function TSet:Add(NewItem)
end

---Remove item from set
---@param Item TElement @The item to remove from the set
---@return boolean @True if an item was removed (False indicates no equivalent item was present)
function TSet:Remove(Item)
end

---Returns true if the set contains the given item.
---@param ItemToFind any @The item to look for
---@return boolean @True if the item was found within the set
function TSet:Contains(ItemToFind)
end

---Clear the set, removes all content.
function TSet:Clear()
end

---Outputs an Array containing copies of the entries of a Set.
---@return TArray @Array
function TSet:ToArray()
end

---Get a lua table copy of this set.
---@return table
function TSet:ToTable()
end
