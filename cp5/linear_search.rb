def linear_search(collection, value)
  for i in collection
    return i if i == value
  end
end

puts linear_search([1, 2, 3], 2)
