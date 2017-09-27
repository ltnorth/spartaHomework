require_relative "quadrilateral.rb"
require_relative "square.rb"
require_relative "rectangle.rb"

square = Square.new(5)
rectangle = Rectangle.new(4, 3)

square.describe
rectangle.describe