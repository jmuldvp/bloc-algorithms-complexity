require 'pry'

def bubble_sort(collection)
  n = collection.length
  binding.pry
  begin
    swapped = false
    (n - 1).times do |i|
      if collection[i] > collection[i + 1]
        tmp = collection[i]
        collection[i] = collection[i + 1]
        collection[i + 1] = tmp
        swapped = true
      end
    end
  end until not swapped
  collection
end

col = ['B','D','C','F','A','E','G']
p col
new_col = bubble_sort(col)
p new_col
