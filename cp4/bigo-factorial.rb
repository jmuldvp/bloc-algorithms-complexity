def worst_bigo(num)
  n = 1
  (n..num).each do |i|
    n = n * i
    puts i.to_s + ', ' + n.to_s
  end
  puts "--- End of section where number = #{num} ---"
end

puts "Big-O notation of worst case iteration values O(n!)\n\n"
worst_bigo(4)
worst_bigo(8)
worst_bigo(10)
