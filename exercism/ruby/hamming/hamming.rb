class Hamming
	def self.compute(one, two)
		if one.empty? || two.empty?
			0
		else
			raise ArgumentError, 'Arguments not the same length' unless one.length == two.length
			array_one = one.chars
			array_two = two.chars
			count = 0
			for i in (0..array_one.length)
				if array_one[i] != array_two[i]
					count += 1
				end
			end
			count
		end
	end
end

module BookKeeping
  VERSION = 3
end