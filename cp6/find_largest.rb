def find_largest(collection)
  largest = collection[0]
  # collection.length.times do |i|
  (1..collection.length-1).each do |i|
    # if collection[i] >= largest
    current = collection[i]
    if current > largest
      largest = collection[i]
    end
  end
  largest
end
