def search(val, arr)
  beg = 0
  last = arr.length - 1

  while beg <= last
    mid = (beg + last) / 2
    if arr[mid] > val
      last = mid - 1
    elsif arr[mid] < val
      beg = mid + 1
    else
      return "found #{mid}"
    end
  end
  return "not found"
end

arr = [1,2,3,4,5,6,7,8]
puts search(8, arr)
