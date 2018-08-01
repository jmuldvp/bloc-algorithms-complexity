require 'benchmark'

# https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Quicksort-diagram.svg/400px-Quicksort-diagram.svg.png

def quicksort(arr)
  return [] if arr.empty? # Could be considered a base case.

  # Picking a random number and assigning to pivot
  pivot = arr.delete_at(rand(arr.size))
  # puts pivot.to_s

  # Using partition method, pass in pivot variable
  left, right = arr.partition(&pivot.method(:>))
  # puts left.to_s
  # puts right.to_s

  # Recursive call using splat-left, pivot, and splat-right
  return *quicksort(left), pivot, *quicksort(right)
end

# arr = [3, 7, 8, 5, 2, 1, 9, 6, 4]
# arr = [34,2,1,5,3]
arr = [84, 24, 73, 71, 61, 75, 62, 79, 49, 8, 72, 56, 59, 10, 42, 68, 47, 76, 44, 58, 22, 60, 92, 55, 66, 94, 69, 63, 89, 18, 96, 1, 19, 70, 65, 13, 87, 81, 23, 51, 25, 37, 57, 31, 33, 14, 41, 83, 91, 46]
p Benchmark.measure { quicksort(arr) }
