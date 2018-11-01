# Structs, OStructs, built-in Math and Time classes, Procs and then Lambdas.

# Creating a struct instead of creating a class that I'd have to "require"
City = Struct.new(:city, :x, :y)

dist_check = Proc.new do |first, second|
  Math.hypot(second.x - first.x, second.y - first.y)
end

def nearest(arr_cities, current_city, dist_check)
  path = [current_city.city]
  until arr_cities[0].nil?
    next_stop = arr_cities[0]
    arr_cities.each do |i|
      if dist_check.call(current_city, next_stop) > dist_check.call(current_city, i)
        next_stop = i
      end
    end
    current_city = next_stop
    arr_cities.delete(next_stop)
    path << current_city.city
  end
  return path
end

start_city = City.new("Palmyra, NY", 77.2, 43.1)
cityb = City.new("Kirtland, OH", 81.4, 41.6)
cityc = City.new("Winter Quarters, NE", 95.9, 41.3)
cityd = City.new("Salt Lake City, UT", 111.9, 40.8)
citye = City.new("Harmony, PA", 80.1, 40.8)
cityf = City.new("Nauvoo, IL", 91.4, 40.6)
city_arr = [cityb, cityc, cityd, citye, cityf]

trip = nearest(city_arr, start_city, dist_check)
puts trip
