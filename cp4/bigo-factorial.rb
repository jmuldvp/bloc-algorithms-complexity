def worst_o_of_n(num)
  i = 1
  while i < num + 1
    if i == num
      puts "found #{num}"
    end
    i += 1
  end
  puts "--- End of section where number = #{num} ---"
end

puts "Big-O notation of worst case iteration values O(n)\n\n"
worst_bigo(4)
worst_bigo(8)
worst_bigo(10)
