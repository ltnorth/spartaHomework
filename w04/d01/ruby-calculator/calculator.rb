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
def power(*numbers)
	numbers.reduce(:**)
end
def square_root(num)
	Math.sqrt(num)
end
def bmi(num, mass, height)
	if num == 0
		mass / (height * height)
	else
		(mass * 703) / (height * height)
	end
end


puts "\n***CalcIt*** \n\n(b)asic, (a)dvanced, bm(i)"
which_calc = gets.chomp

if which_calc == "b"
	puts "Which operation would you like to use? (a)ddition, (s)ubtraction, (m)ultiplication, (d)ivision"
	op = gets.chomp
	puts "Enter your first number:"
	num1 = gets.chomp.to_i
	puts "Enter your second number:"
	num2 = gets.chomp.to_i
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
		  puts "No valid operator chosen - exiting calculator..."
	end
elsif which_calc == "a"
	puts "Which operation would you like to use? (p)ower, (s)quare root"
	op = gets.chomp
	case op
		when "p"
			puts "Enter your base number:"
			num1 = gets.chomp.to_i
			puts "Enter your exponent:"
			num2 = gets.chomp.to_i
			puts power(num1, num2)
		when "s"
			puts "Enter your number:"
			num = gets.chomp.to_i
			puts square_root(num)
		else
		  puts "No valid operator chosen - exiting calculator..."
	end
elsif which_calc == "i"
		puts "Which units? (m)etric or (i)mperial"
		op = gets.chomp
		puts "Enter your mass in kilograms for metric or pounds for imperial:"
		mass = gets.chomp.to_i
		puts "Enter your height in metres for metric and inches for imperial:"
		height = gets.chomp.to_f
		case op
			when "m"
				puts bmi(0, mass, height)
			when "i"
				puts bmi(1, mass, height)
			else
		  	puts "No valid operator chosen - exiting calculator..."
		end
end













