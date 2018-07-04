Assignment answers for checkpoint 2 of _Module 3: Software Engineering Principles - Algorithms and Complexity_

>- Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using linear search?

Because the linear search starts at the beginning of a collection, it would take 7 iterations to finally get to G when starting with A. The collection being A, B, C, D, E, F, G

>- Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using binary search?

It would take 3 iterations to find G in a collection of A, B, C, D, E, F, G using a binary search.

>- Calculate fib(10), fib(11), fib(12) by hand.

`fib(10)` = fib(9) + fib(8) = 34 + 55 = *89*
`fib(11)` = fib(10) + fib(9) = 55 + 89 = *144*
`fib(12)` = fib(11) + fib(10) = 89 + 144 = *233*

> Save the recursive implementation of the Fibonacci sequence above as fibonacci_recursive.rb. Compare the time it takes to run fib(20) between the iterative solution from the previous checkpoint and recursive solutions.

I couldn't tell which one was going slower than the other so I benchmarked the scripts for `fib(20)`. Here are the results...
```text
$ ruby fibonacci_iterative.rb
0.000000   0.000000   0.000000 (  0.000022)
```

...vs...

```text
$ ruby fibonnaci_recursive.rb
0.010000   0.000000   0.010000 (  0.001575)
```

Based on what I read, recursion has to recalculate all of the previous calculations for every iteration.  The iterative version of the script keeps track of what the values were the previous time and doesn't have to recalculate.

>- Given an unsorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.

If the collection is unsorted and from my understanding, there is no way a binary search would be successful unless it "got lucky".  The only way to ensure a binary search to work is if the collection is sorted because the search logic depends on values being in order and values being smallest to greatest.  A binary search on `[1,6,5,3,10]` would fail if you were searching for the 6 or the 3. If I had the option of binary vs linear, I'd have to go with linear in this case so that the search would return a result.

>- In Ruby, write a working iterative version of binary search, save it in a file named binary_search_iterative.rb.

>- In Ruby, write a working recursive version of binary search, save it in a file named binary_search_recursive.rb.
