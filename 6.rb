class Phoenix
	def initialize
		puts  'Enter the name of your phoenix!'
		@name = gets.chomp.capitalize
		
		@health = 15
		@mana = 15
		@hunger = 15  	# голод
		@dream = 15
		@mood = 15    	# настроение
		@shit = 0
		@disease = 0  	# болезнь
		
		puts @name + ' is hatched from eggs!'
	end
	#___________________________________________________________
	def feed
		food = ['insect', 'nectar', 'frog', 'fish', 'meet']
		number = rand(0..4)
		puts 'Hey, you, ' + @name + ', catch a piece of ' + food[number] + '!'
		@hunger += (number+1)
		@health += 3
		@shit += 2
		if number == 2
			@disease += 5
			@health -= 3
		end
		if @disease >= 10
			puts @name + ' not suffered a terrible illness.RIP'
			exit
		end
		timePassed
	end
	def walk
		puts 'Get up, ' + @name + ' go on the hunt!'
		@mood += 3
		timePassed
	end
	def sleep
		puts 'The moon rose, ' + @name + ', time to sleep!'
		@dream += 4
		@mana += 4
		@mood += 2
		timePassed
	end
	def remove_shit
		puts 'Well, you left footprints! ' + @name + ', should bury it!'
		@shit -= 5
		@mood += 2
		timePassed
	end
	def treat
		puts 'Stand still!' + @name + ', i\'ll heal you'
		@disease -= 5
		@mood += 2
		timePassed
	end
	def play
		puts 'Lets Sigrun hide and seek, ' + @name + '. Do it so that I was looking for you.'
		@mood += 6
		@mana -= 2
		timePassed
	end
	def scratch # почесать
		puts @name + ' grumbles, when i scratch his back.'
		@mood += 3
		timePassed
	end
	def kick
		puts @name + ' did a somersault in the air.'
		@health -= 5
		@mana -= 5
		timePassed
	end
	def abuse # ругать
		puts @name + ' offended by these words.'
		@mood -= 5 
		timePassed
	end
	def wait
		puts @name + ', you must weit me some time.'
		@mood -= 2
		timePassed
	end
	def help
puts 'Basic commands: 
 1.stop     <-- exit game
 2.wait     <-- wait a bit
 3.feed     <-- feed your pet 
 4.walk     <-- go hunting 
 5.sleep    <-- put to sleep 
 6.shit     <-- say the pet clean up 
 7.treat    <-- mend your pet
 8.play     <-- play with your pet
 9.scratch  <-- scratch your pet
10.kick     <-- kick your pet
11.abuse    <-- abuse your pet
12.help     <-- show this menu
13.stat     <-- show stats of pet
<--------------------------------->'
	end
	def stat 
		puts ['health:' + @health.to_s, 'mana:' + @mana.to_s, 'hunger:' + @hunger.to_s, 'dream:' + @dream.to_s, 'mood:' + @mood.to_s, 'shit:' + @shit.to_s, 'disease:' + @disease.to_s].join('|')
	end
	
	private
	#_____________________________________________________
	def timePassed
		@health -= 2
		@mana -= 2
		@hunger -= 2
		@dream -= 2
		@mood -= 2
		@shit += 1
		
		if @hunger >= 15
			@hunger = 15
			@shit += 3
		elsif @hunger <= 0
			puts @name + ' starved to death. RIP.'
			exit
		end
		if @mood >= 15
			@mood = 15
			@mana += 2
		elsif @mood <= 0
			puts 'You\'re tired ' + @name + ', he left you.'
			exit
		end
		if @dream >= 15
			@dream = 15
			@health += 2
		elsif @dream <= 0
			puts @name + ' exhausted from lack of sleep.'
			exit
		end
		if @health >= 15
			@health = 15
			@mood += 2 
		elsif @health <= 0
			puts @name + ' did not have the strength to live.'
			exit
		end
		if @mana >= 15
			@mana = 13
			@dream += 2
		elsif @mana <= 0
			puts 'Magic power of ' +  @name + ' is drained. He turned to ashes.' 
			exit
		end
		if @shit <= 0
			@shit = 0
			@mood += 2 
		elsif @shit >= 15
			puts @name + ' do not want to live in the pus, he left you.'
			exit
		end		
	end
end

pet = Phoenix.new
action = gets.chomp
while action != 'stop'
	if action == 'feed'
		pet.feed
		action = gets.chomp
	elsif action == 'walk'
		pet.walk
		action = gets.chomp
	elsif action == 'sleep'
		pet.sleep
		action = gets.chomp
	elsif action == 'shit'
		pet.remove_shit
		action = gets.chomp
	elsif action == 'treat'
		pet.treat
		action = gets.chomp
	elsif action == 'wait'
		pet.wait
		action = gets.chomp
	elsif action == 'play'
		pet.play
		action = gets.chomp
	elsif action == 'scratch'
		pet.scratch
		action = gets.chomp
	elsif action == 'kick'
		pet.kick
		action = gets.chomp
	elsif action == 'abuse'
		pet.abuse
		action = gets.chomp
	elsif action == 'help'
		pet.help
		action = gets.chomp
	elsif action == 'stat'
		pet.stat 
		action = gets.chomp
	else
		puts'Does not understand what to do!'
		action = gets.chomp
	end
end
