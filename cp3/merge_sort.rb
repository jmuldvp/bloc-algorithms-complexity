require 'pry'

# def merge_sort(collection)
#   puts "start merge_sort"
#   if collection.length <= 1
#     puts "base merge sort case"
#     puts collection.to_s
#     return collection
#   else
#     mid = (collection.length / 2).floor
#     # puts "between mid and left"
#     left = merge_sort(collection[0..mid - 1])
#     puts "between left and right"
#     right = merge_sort(collection[mid..collection.length])
#     puts "start"
#     puts left.to_s
#     puts right.to_s
#     puts collection.to_s
#     merge(left, right)
#   end
# end
#
# def merge(left, right)
#   if left.empty?
#     puts "only right"
#     puts right.to_s
#     return right
#   elsif right.empty?
#     puts "only left"
#     puts left.to_s
#     return left
#   elsif left.first < right.first
#     puts "left smaller than right"
#     puts left.to_s
#     puts right.to_s
#     return [left.first] + merge(left[1..left.length], right)
#   else
#     puts "whatever"
#     puts left.to_s
#     puts right.to_s
#     return [right.first] + merge(left, right[1..right.length])
#   end
# end
#
# # col = ['B','D','C','F','A','E','G']
# col = ['E','C','A','B','F','G','D']
# p col
# new_col = merge_sort(col)
# p new_col


# def merge_sort(collection)
#   if collection.length <= 1
#     collection
#   else
#     mid = (collection.length / 2).floor
#     left = merge_sort(collection[0..mid - 1])
#     right = merge_sort(collection[mid..collection.length])
#     merge(left, right)
#   end
# end
#
# def merge(left, right)
#   if left.empty?
#     right
#   elsif right.empty?
#     left
#   elsif left.first < right.first
#     [left.first] + merge(left[1..left.length], right)
#   else
#     [right.first] + merge(left, right[1..right.length])
#   end
# end
#
# col = ['E','C','A','B','F','G','D']
# p col
# new_col = merge_sort(col)
# p new_col


def merge_sort(collection)
  puts "start merge_sort"
  if collection.length <= 1
    puts "base merge sort case"
    puts collection.to_s
    puts "end merge_sort"
    return collection
  else
    mid = (collection.length / 2).floor
    left = merge_sort(collection[0..mid - 1])
    puts "between left and right"
    right = merge_sort(collection[mid..collection.length])
    puts "start"
    puts left.to_s
    puts right.to_s
    puts "end merge_sort"
    return merge(left, right)
  end
end

def merge(left, right)
  puts "start merge"
  if left.empty?
    puts "only right"
    puts right.to_s
    puts "end merge"
    return right
  elsif right.empty?
    puts "only left"
    puts left.to_s
    puts "end merge"
    return left
  elsif left.first < right.first
    puts "left smaller than right"
    puts left.to_s
    puts right.to_s
    puts "end merge"
    return [left.first] + merge(left[1..left.length], right)
  else
    puts "whatever"
    puts left.to_s
    puts right.to_s
    puts "end merge"
    return [right.first] + merge(left, right[1..right.length])
  end
end

# col = ['B','D','C','F','A','E','G']
col = ['E','C','A','B','F','G','D']
p col
new_col = merge_sort(col)
p new_col
