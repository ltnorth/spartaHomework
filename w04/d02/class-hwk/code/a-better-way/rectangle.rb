class Rectangle < Quadrilateral     # This means that all rectangles inherit all methods from quadrilateral
	attr_accessor :width, :height

	def initialize(width, height)
		self.width = width
		self.height = height
	end

	def calculate_area
		self.width * self.height
	end

	def calculate_perimeter
		(self.width * 2) + (self.height * 2)
	end

	def scale(factor)
		self.width *= factor
		self.height *= factor
	end
end