# Require the class files in order to use them
require_relative "square.rb"
require_relative "rectangle.rb"

# Squares
square = Square.new(5)
square.info

# scale the square by a factor of 10
square.scale(10)
square.info

# Rectangles
rectangle = Rectangle.new(4, 3)
rectangle.info

# scale the rectangle by a factor of 6
rectangle.scale(6)
rectangle.info