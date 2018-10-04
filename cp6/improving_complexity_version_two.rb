# Create a version that improves the time complexity performance.
# Put the solution in a file named improving_complexity_version_two.rb.

# This method takes n arrays as input and combine them in sorted ascending order
def improving_complexity_version_two(*arrays)
  return arrays.flatten.sort
end
