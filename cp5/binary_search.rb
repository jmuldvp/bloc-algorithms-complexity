def binary_search_iterative(collection, val)
  # #1
  low, high = 0, collection.length - 1
  # #2
  while low <= high
    mid = ((low + high) / 2).ceil
    if val < collection[mid]
      high = mid - 1
    elsif val > collection[mid]
      low = mid + 1
    else
      return mid
    end
  end
  nil
end

# 1 - Variable assignments are considered constant time which don't affect complexity.
# 2 - Enter a while loop which does a divide and conquer.
