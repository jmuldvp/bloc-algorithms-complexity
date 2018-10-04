# Create a version of the code above that has code optimizations.
# Put the solution in a file named improving_complexity_version_one.rb.

# This method takes n arrays as input and combine them in sorted ascending order
def improving_complexity_version_one(*arrays)
  combined_array = []
  arrays.each do |array|
      combined_array << array
  end

  sorted_array = [combined_array.delete_at(combined_array.length - 1)]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end
