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

if which_calc == "b"
	puts "Enter your first number:"
	num1 = gets.chomp.to_i
	puts "Enter your second number:"
	num2 = gets.chomp.to_i
	puts "Which operation would you like to use? (a)ddition, (s)ubtraction, (m)ultiplication, (d)ivision"
	op = gets.chomp
	case op
		when "a"
		  puts add(num1, num2)
		when "s"
		  puts subtract(num1, num2)
		when "m"
		  puts multiply(num1, num2)
		when "d"
		  puts divide(num1, num2.to_f)
		else
		  puts "Invalid entry - calculator shutting down..."
	end
end













