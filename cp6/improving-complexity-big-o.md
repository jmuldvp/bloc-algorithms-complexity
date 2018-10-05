> Find the Big-O of each version and write your work and solution in a file named improving-complexity-big-o.rb.

1. improving_complexity_version_one - I would say that because there are nested loops, this would be O(n^2).

2. improving_complexity_version_two - I'm using built in functions and no loops whatsoever. I took a quick glance at the source code for [#flatten](https://ruby-doc.com/core-2.5.1/Array.html#method-i-flatten) and [#sort](https://ruby-doc.com/core-2.5.1/Array.html#method-i-sort) but I'm still not positive what my implementation would be. I'm guessing one of these 3... O(log n), O(n) or O(n log n).  It's been over 20 years since I've looked at and tried to read [C](https://en.wikipedia.org/wiki/C_(programming_language)).

3. improving_complexity_version_three - See my answer for number 2. Because I'm not using any loops, my guess is it's either O(log n), O(n) or O(n log n)
