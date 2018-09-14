>1. Describe an analogy for relating an algorithm that has efficiency O(1) and another algorithm that has O(2n). An example would be:

>For example...An algorithm that has O(1) is a Cheetah and an algorithm that has O(2^n) is a Snail.

An O(1) efficiency is as fast as something can get with respect to the other "O" ratings. O(n^2) is almost the worst efficiency possible.  I think the only one that is worse is O(n!).

As far as an analogy is concerned, if you took a moped to get gas in it's small gas tank that fits less than a gallon of gas, it would take the same amount of time to fill the tanks of a 747 airliner.  This means that no matter how much needs to be filled, it would take the same amount of time.

Comparing that to O(n^2), it would go a lot faster filling the tank of a moped and filling the 747 you would use a smaller and smaller nozzle the more gas that went into the 747 which would slow things down (bottle neck) the amount of gas going in making it take longer to fill the tank.

My comparison is about the time it takes to fill different size tanks rather than bottle necking or using a nozzle.

>2. In plain English, what is the best case scenario for binary search?

The best case scenario for any search is where the value is found on the first iteration. O(1) is best case for any scenario.

>3. In plain English, what is the worst-case scenario for binary search?

Because the search time is proportional to the search tree's height, the worst case scenario would be O(n). The more there is to search through, the longer it takes to search through proportionally.

>4. In plain English, what is the bounded-case scenario for binary search?

Bounded case for a binary search would be &theta;(log (n)).

>5. Create a graph using the data below. Here's a [CSV]() with the values you'll need.

Here's the graph...
[https://docs.google.com/spreadsheets/d/1RzFV3e_VH_VI9nSFwr9bRWtIB_hh_UMcIKqRTdctlE4/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1RzFV3e_VH_VI9nSFwr9bRWtIB_hh_UMcIKqRTdctlE4/edit?usp=sharing)

>6. What is the limit of the function above as n approaches infinity?

As n approaches infinity, so does f(2^n).

>7. What is the Big-O of an algorithm that has the data points above?

Based on the data points, the Big-O notation for this is O(2^n).

>8. Write a Ruby method that takes a number n. This method must print the worst-case number of iterations for linear search to find an item in collections of size one to n. Use it to generate a table of worst-case iterations of collections up to size 10.

See `bigo-factorial.rb` file in this repo.

>9. Create a graph from the output using Google Sheets or other graphing software. Analyze the graph and denote its Big-O somewhere on the graph.

See this document...
[https://docs.google.com/spreadsheets/d/1ZVJWsfTf-hI4AEHyBcP9M4Nkr8EIKUvYg1kP7hIIZrw/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1ZVJWsfTf-hI4AEHyBcP9M4Nkr8EIKUvYg1kP7hIIZrw/edit?usp=sharing)

>10. What is the Big-O (O) of binary search?

O(log n)

In some commentary I read, it said that it was O(n) but I'm thinking that would be the worst case if the search wasn't sorted first.

>11. What is the Big-Ω (omega) of binary search?

O(1)

>12. What is the Big-Ө (theta) of binary search?

O(log n)

>Commit intro_complexity_answers.txt and the graph file. Submit the commit to your mentor.
