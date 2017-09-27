class Square
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

	def info
		puts "Your square has properties: \n Area: #{self.calculate_area} Perimeter: #{self.calculate_perimeter}"
	end
end