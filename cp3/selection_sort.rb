require 'pry'
require 'benchmark'

def selection_sort(collection)
  length = collection.length

  for i in 0..length - 2
    min_index = i
    for j in (i + 1)...length
      if collection[j] < collection[min_index]
        min_index = j
      end
    end

    tmp = collection[i]
    collection[i] = collection[min_index]
    collection[min_index] = tmp
  end
  collection
end

# col = ['B','D','C','F','A','E','G']
arr = [84, 24, 73, 71, 61, 75, 62, 79, 49, 8, 72, 56, 59, 10, 42, 68, 47, 76, 44, 58, 22, 60, 92, 55, 66, 94, 69, 63, 89, 18, 96, 1, 19, 70, 65, 13, 87, 81, 23, 51, 25, 37, 57, 31, 33, 14, 41, 83, 91, 46]
p arr
p Benchmark.measure { selection_sort(arr) }
