>1. What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
```ruby
def goodbye_world(n)
  puts "Goodbye World! #{n}"
end
```

Answer: O(1)
Reasoning: It always takes the same amount of time to execute.


>2. What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
```ruby
def find_largest(collection)
  largest = collection[0]
  collection.length.times do |i|
    if collection[i] >= largest
      largest = collection[i]
    end
  end
  largest
end
```

Answer: O(n)
Reasoning: It has to run through the entire `collection` before it finishes. The bigger the `collection`, the longer it takes proportionally.


>3. What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
```ruby
def find_largest(collection)
  largest = collection[0][0]
  collection.length.times do |i|
    subcollection = collection[i]
    subcollection.length.times do |j|
      if subcollection[j] >= largest
        largest = subcollection[j]
      end
    end
  end
  largest
end
```

Answer: O(n)
Reasoning: This is running through every single character in an array or collection one by one. The bigger the collection, the longer it would take proportionally.

>4. What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
```ruby
def numbers(n)
  if (n == 0)
    return 0
  elsif (n == 1)
    return 1
  else
    return numbers(n-1) + numbers(n-2)
  end
end
```

Answer: Either O(n^2)
Reasoning: For every recursion, it calls itself twice.

>5. What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
```ruby
def iterative(n)
  num1 = 0
  num2 = 1

  i = 0
  while i < n-1
    tmp = num1 + num2
    num1 = num2
    num2 = tmp
    i+=1
  end

  num2
end
```

Answer: O(n)
Reasoning: It's just looping once through the whole collection. The larger the collection, the longer it would take.

>6. What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
```ruby
def sort(collection, from=0, to=nil)
  if to == nil
    # Sort the whole collection, by default
    to = collection.count - 1
  end

  if from >= to
    # Done sorting
    return
  end

  # Take a pivot value, at the far left
  pivot = collection[from]

  # Min and Max pointers
  min = from
  max = to

  # Current free slot
  free = min

  while min < max
    if free == min # Evaluate collection[max]
      if collection[max] <= pivot # Smaller than pivot, must move
        collection[free] = collection[max]
        min += 1
        free = max
      else
            max -= 1
      end
    elsif free == max # Evaluate collection[min]
      if collection[min] >= pivot # Bigger than pivot, must move
        collection[free] = collection[min]
        max -= 1
        free = min
      else
        min += 1
      end
    else
      raise "Inconsistent state"
    end
  end

  collection[free] = pivot

  sort collection, from, free - 1
  sort collection, free + 1, to

  collection
end
```

Answer: O(log n)
Reason: The most complex part of this is the while lopp with nested if statements. It seems like it divides the collection with each iteration.
