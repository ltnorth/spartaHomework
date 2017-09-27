class Square < Quadrilateral     # This means that all squares inherit all methods from quadrilateral
	attr_accessor :length

	def initialize(length)
		self.length = length
	end

	def calculate_area
  	self.length ** 2
	end

	def calculate_perimeter
	  self.length * 4
	end

	def scale(factor)
		self.length *= factor
	end
end