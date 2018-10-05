# Create a version that improves the space complexity.
# Put the solution in a file named improving_complexity_version_three.rb.

# This method takes n arrays as input and combine them in sorted ascending order
class ArrSort
  def initialize
    @arr = Hash.new
  end

  def combine_sort(*arrays)
    h = arrays.flatten.sort
    @arr = Hash[(1..h.size).zip h]
  end
end
