def search(beginning_index, middle_index, last_index, search_value, array)
  if search_value == array[middle_index]
    return "Found search value #{search_value} in array position #{middle_index}"
  elsif search_value < array[middle_index] && search_value >= array[beginning_index]
    last_index = middle_index - 1
    middle_index = (beginning_index + last_index) / 2
    search(beginning_index, middle_index, last_index, search_value, array)
  elsif search_value > array[middle_index] && search_value <= array[last_index]
    beginning_index = middle_index + 1
    middle_index = (beginning_index + last_index) / 2
    search(beginning_index, middle_index, last_index, search_value, array)
  else
    return "value not found"
  end

end

array = [1,2,3,4,5,6,7,8]
beginning_index = 0
last_index = array.length - 1
middle_index = (beginning_index + last_index) / 2
puts search(beginning_index, middle_index, last_index, 0, array)
