require 'benchmark'

# InsertionSort to be used within bucket sort
# https://www.harrywhelchel.com/sorting-algorithms-in-ruby/
def insertion_sort(list)
  (1...list.length).each do |i|
      k = i
      while k > 0 && list[k] < list[k-1]
        list[k], list[k-1] = list[k-1], list[k]
        k -= 1
      end
  end
  list
end

def bucketsort(array, bucket_size = 5)
  print 'Array is empty' if array.empty?

  # array = input.split(' ').map(&:to_i)

  bucket_count = ((array.max - array.min) / bucket_size).floor + 1

  # create buckets
  buckets = []
  bucket_count.times { buckets.push [] }

  # fill buckets
  array.each do |item|
    buckets[((item - array.min) / bucket_size).floor].push(item)
  end

  # sort buckets
  buckets.each(&:sort!)

  buckets.flatten.join(' ')
end

# arr = [0.03, 0.17, 0.82, 0.35, 0.24, 0.15, 0.96, 0.67, 0.48]
# arr = [34,2,1,5,3]
arr = [84, 24, 73, 71, 61, 75, 62, 79, 49, 8, 72, 56, 59, 10, 42, 68, 47, 76, 44, 58, 22, 60, 92, 55, 66, 94, 69, 63, 89, 18, 96, 1, 19, 70, 65, 13, 87, 81, 23, 51, 25, 37, 57, 31, 33, 14, 41, 83, 91, 46]
p Benchmark.measure {bucketsort(arr)}
