number  = (1.. 19).to_a

number = 1
power = 0
while number!= 19
	number += 1
	if number % 2 == 0 and number <= 5
		power += 62
		puts 'Generator #' +(number - 1).to_s + ' is off.'
		puts 'Generator #' +number.to_s + ' is on, adding 62MW, for a total of ' + power.to_s + 'MW!'
	elsif number % 2 == 0 and number >= 6
		power += 124
		puts 'Generator #' +(number - 1).to_s + ' is off.'
		puts 'Generator #' +number.to_s + ' is on, adding 124MW, for a total of ' + power.to_s + 'MW!'
	end
end
puts 'Generator #19 is off.'
