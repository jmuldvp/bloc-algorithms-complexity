require 'pry'
require 'benchmark'


def merge_sort(collection)
  # puts "start merge_sort"
  if collection.length <= 1
    # puts "base merge sort case"
    # puts collection.to_s
    # puts "end merge_sort"
    return collection
  else
    mid = (collection.length / 2).floor
    left = merge_sort(collection[0..mid - 1])
    # puts "between left and right"
    right = merge_sort(collection[mid..collection.length])
    # puts "start"
    puts left.to_s
    puts right.to_s
    # puts "end merge_sort"
    return merge(left, right)
  end
end

def merge(left, right)
  # puts "start merge"
  if left.empty?
    # puts "only right"
    puts right.to_s
    # puts "end merge"
    return right
  elsif right.empty?
    # puts "only left"
    puts left.to_s
    # puts "end merge"
    return left
  elsif left.first < right.first
    # puts "left smaller than right"
    puts left.to_s
    puts right.to_s
    # puts "end merge"
    return [left.first] + merge(left[1..left.length], right)
  else
    # puts "whatever"
    puts left.to_s
    puts right.to_s
    # puts "end merge"
    return [right.first] + merge(left, right[1..right.length])
  end
end

# col = ['B','D','C','F','A','E','G']
# col = ['E','C','A','B','F','G','D']
arr = [84, 24, 73, 71, 61, 75, 62, 79, 49, 8, 72, 56, 59, 10, 42, 68, 47, 76, 44, 58, 22, 60, 92, 55, 66, 94, 69, 63, 89, 18, 96, 1, 19, 70, 65, 13, 87, 81, 23, 51, 25, 37, 57, 31, 33, 14, 41, 83, 91, 46]
p arr
p Benchmark.measure { merge_sort(arr) }
