number = 0
power = 0

while number!= 19
	number += 1
	if number % 2 != 0 and number <= 4
		power += 62
		puts 'Generator #' + number.to_s + ' is off.'
		puts 'Generator #' + (number + 1).to_s + ' is on, adding 62MW, for a total of ' + power.to_s + 'MW!'
	elsif number % 2 != 0 and number >= 5
		power += 124
		puts 'Generator #' + number.to_s + ' is off.'
		puts 'Generator #' + (number + 1).to_s + ' is on, adding 124MW, for a total of ' + power.to_s + 'MW!'
	elsif number == 18
		puts 'Generator #19 is off.' 
		exit
	end
end
