def find_largest_better(collection)
  largest = collection[0]
  collection_length = collection.length

  (0..collection_length/2).each do |i|
    left_element = collection[i]
    right_element = collection[collection_length - i - 1]

    larger = right_element > left_element ? right_element : left_element

    if larger > largest
      largest = larger
    end
  end
  largest
end
