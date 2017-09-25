def add(*numbers)
	numbers.reduce(:+)
end
def subtract(*numbers)
	numbers.reduce(:-)
end
def multiply(*numbers)
	numbers.reduce(:*)
end
def divide(*numbers)
	numbers.reduce(:/)
end





puts "\n***CalcIt*** \n\n(b)asic, (a)dvanced"
which_calc = gets.chomp
# puts which_calc

