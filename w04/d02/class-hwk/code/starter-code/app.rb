require_relative 'square.rb'
require_relative 'rectangle.rb'

# Squares
square = Square.new(5)
puts "Area: #{square.calculate_area} Perimeter: #{square.calculate_perimeter}"

# scale the square by a factor of 10
square.scale(10)
puts "Area: #{square.calculate_area} Perimeter: #{square.calculate_perimeter}"

# Rectangles
rectangle = Rectangle.new(4, 3)
puts "Area: #{rectangle.calculate_area} Perimeter: #{rectangle.calculate_perimeter}"

# scale the rectangle by a factor of 6
rectangle.scale(6)
puts "Area: #{rectangle.calculate_area} Perimeter: #{rectangle.calculate_perimeter}"