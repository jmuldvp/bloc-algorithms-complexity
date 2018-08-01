require 'benchmark'

def heapsort(array)
  len, arr = array.length, [nil] + array

  (len / 2).downto(1) do |i|
    # p 'before heap'
    heapify(arr, i, len)
    # p 'after heap'
  end

  while len > 1
    arr[1], arr[len] = arr[len], arr[1]
    len -= 1
    heapify(arr, 1, len)
  end
  arr.drop(1)
end

def heapify(arr, i, len)
  # p 'enter heap'
  # p 'arr, i, len are ' + arr.to_s + ' - ' + i.to_s + ' - ' + len.to_s
  root = arr[i]
  # p 'root is ' + root.to_s
  while (child = 2 * i) <= len
    child += 1 if child < len && arr[child] < arr[child + 1]
    break if root >= arr[child]
    arr[i], i = arr[child], child
    arr[i] = root
  end
  # p 'exit heap'
  # p 'arr, i, len are ' + arr.to_s + ' - ' + i.to_s + ' - ' + len.to_s
end

# arr = [3, 7, 8, 5, 2, 1, 9, 6, 4]
# arr = [3, 1, 2]
arr = [84, 24, 73, 71, 61, 75, 62, 79, 49, 8, 72, 56, 59, 10, 42, 68, 47, 76, 44, 58, 22, 60, 92, 55, 66, 94, 69, 63, 89, 18, 96, 1, 19, 70, 65, 13, 87, 81, 23, 51, 25, 37, 57, 31, 33, 14, 41, 83, 91, 46]
p Benchmark.measure { heapsort(arr) }
