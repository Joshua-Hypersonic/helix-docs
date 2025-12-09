---@class TArray<TElement>
local TArray = {}

---Get the number of items in an array
---@return integer
function TArray:Length()
end

---Get the number of items in an array
---@return integer
function TArray:Num()
end

---Add item to array
---@param NewItem TElement @The item to look for
---@return integer @The index of the newly added item
function TArray:Add(NewItem)
end

---Add item to array (unique)
---@param NewItem TElement @The item to add to the array
---@return integer @The index of the newly added item, or INDEX_NONE if the item is already present in the array
function TArray:AddUnique(NewItem)
end

---Finds the index of the first instance of the item within the array
---@param ItemToFind TElement @The item to look for
---@return integer @The index the item was found at, or -1 if not found
function TArray:Find(ItemToFind)
end

---Insert item at the given index into the array.
---@param NewItem TElement @The item to insert into the array
---@param Index integer @The index at which to insert the item into the array
function TArray:Insert(NewItem, Index)
end

---Remove item at the given index from the array.
---@param IndexToRemove integer @The index into the array to remove from
function TArray:Remove(IndexToRemove)
end

---Remove all instances of item from array.
---@param Item TElement @The item to remove from the array
---@return boolean @True if one or more items were removed
function TArray:RemoveItem(Item)
end

---Clear the array, removes all content
function TArray:Clear()
end

---Reserve space for N elements
---@param Size integer @Size
---@return bool @whether the operation succeed
function TArray:Reserve(Size)
end

---Resize Array to specified size.
---@param Size integer @The new size of the array
function TArray:Resize(Size)
end

---Get address of the i'th element
---@param Index integer @the index
---return lightuserdata @the address of the i'th element
function TArray:GetData(Index)
end

---Given an array and an index, returns a copy of the item found at that index
---@param Index integer @The index in the array to get an item from
---@return any @A copy of the item stored at the index
function TArray:Get(Index)
end

---Given an array and an index, returns a reference of the item found at that index
---@param Index integer @The index in the array to get an item from
---@return TElement @A reference of the item stored at the index
function TArray:GetRef(Index)
end

---Given an array and an index, assigns the item to that array element
---@param Index integer @The index to assign the item to
---@param Item TElement @The item to assign to the index of the array
function TArray:Set(Index, Item)
end

---Swaps the elements at the specified positions
---If the specified positions are equal, invoking this method leaves the array unchanged
---@param FirstIndex integer @The index of one element to be swapped
---@param SecondIndex integer @The index of the other element to be swapped
function TArray:Swap(FirstIndex, SecondIndex)
end

---Shuffle (randomize) the elements
function TArray:Shuffle()
end

---Get the last valid index
---@return integer @The last valid index of the array
function TArray:LastIndex()
end

---Tests if IndexToTest is valid, i.e. greater than or equal to zero, and less than the number of elements in array.
---@param IndexToTest integer @The Index, that we want to test for being valid
---@return boolean @True if the Index is Valid, i.e. greater than or equal to zero, and less than the number of elements in array.
function TArray:IsValidIndex(IndexToTest)
end

---Returns true if the array contains the given item
---@param ItemToFind any @The item to look for
---@return boolean @True if the item was found within the array
function TArray:Contains(ItemToFind)
end

---Append an array to another array
---@param OtherArray TArray @The array to add
function TArray:Append(OtherArray)
end

---Get a lua table copy of this array.
---@return table
function TArray:ToTable()
end
