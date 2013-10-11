puts 'HELLO, TALK TO ME, GRANDSON!'
name = gets.chomp
var = 1930

while name != 'BYE'
	if (name == name.upcase and name != 'BYE')
		puts 'NOT EVEN ONSE WITH  ' + (var + rand(21)).to_s + ' YEAR.'
		name = gets.chomp
	elsif name != name.upcase
		puts 'SPEAK LOUDER, GRANDSON!'
		name = gets.chomp
	end
end

puts 'Bye, grandson! '
