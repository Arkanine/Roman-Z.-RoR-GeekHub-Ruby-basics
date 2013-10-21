class Pet
	def initialize
		puts  'Enter the name of your pet!'
		@name = gets.chomp.capitalize
		
		@health = 15	# здоровье
		@mana = 15      # усталость
		@hunger = 15  	# голод
		@dream = 15     # сон
		@mood = 15    	# настроение
		@shit = 0       # уборка за животным
		@disease = 0  	# болезнь
		
		puts @name + ' is born!'
	end
	
	def feed # накормить
		food = ['insect', 'nectar', 'frog', 'fish', 'meet']
		number = rand(0..4)
		puts 'Hey, you, ' + @name + ', catch a piece of ' + food[number] + '!'
		@hunger += (number+2)
		@health += 5
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
	def walk # погулять
		puts 'Get up, ' + @name + ' go on the hunt!'
		@mood += 4
		@mana += 3
		timePassed
	end
	def sleep # поспать
		puts 'The moon rose, ' + @name + ', time to sleep!'
		@dream += 4
		@mana += 4
		@mood += 3
		timePassed
	end
	def removeShit # убрать за животным
		puts 'Well, you left footprints! ' + @name + ', should bury it!'
		@shit -= 6
		@mood += 2
		timePassed
	end
	def treat # вылечить
		puts 'Stand still!' + @name + ', i\'ll heal you'
		@disease -= 5
		@mood += 2
		timePassed
	end
	def play # поиграть
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
	def kick # пнуть
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
	def wait # подождать(пропустить ход)
		puts @name + ', you must weit me some time.'
		@mood -= 2
		timePassed
	end
	def stat 
		puts ['health:' + @health.to_s, 'mana:' + @mana.to_s, 'hunger:' + @hunger.to_s, 'dream:' + @dream.to_s, 'mood:' + @mood.to_s, 'shit:' + @shit.to_s, 'disease:' + @disease.to_s].join('|')
	end
	
	private
	def timePassed
		@health -= 2
		@mana -= 2
		@hunger -= 2
		@dream -= 2
		@mood -= 2
		@shit += 1
		
		if @hunger >= 15
			@hunger = 15
			@shit += 2
		elsif @hunger <= 0
			puts @name + ' starved to death. RIP.'
			exit
		end
		if @mood >= 15
			@mood = 15
		elsif @mood <= 0
			puts 'You\'re tired ' + @name + ', he left you.'
			exit
		end
		if @dream >= 15
			@dream = 15
		elsif @dream <= 0
			puts @name + ' exhausted from lack of sleep.'
			exit
		end
		if @health >= 15
			@health = 15
		elsif @health <= 0
			puts @name + ' did not have the strength to live.'
			exit
		end
		if @mana >= 15
			@mana = 15
		elsif @mana <= 0
			puts 'Magic power of ' +  @name + ' is drained. He turned to ashes.' 
			exit
		end
		if @shit <= 0
			@shit = 0
		elsif @shit >= 15
			puts @name + ' do not want to live in the pus, he left you.'
			exit
		end	
	end
end

class Phoenix < Pet
	def fly # плавать
		puts @name + ', you can fly a bit.'
		@mood += 7
		@mana -= 2
		timePassed
	end
	def catchBird
		puts @name + ', if you hungry, catch a bird!'
		@health += 5
		@hunger += 5
		@mana -=3
		timePassed
	end
	def help
puts ' Basic commands:
 1.stop      <-- exit game
 2.help      <-- show this menu
 3.stat      <-- show stats of pet
 4.feed      <-- feed your pet
 5.walk      <-- go hunting
 6.sleep     <-- put to sleep
 7.shit      <-- say the pet clean up
 8.treat     <-- mend your pet
 9.play      <-- play with your pet
10.scratch   <-- scratch your pet
11.kick      <-- kick your pet
12.abuse     <-- abuse your pet
13.fly		 <-- permit to fly
14.catchBird <-- order to catch the bird
15.wait      <-- wait a bit
<--------------------------------->'
	end
end

class Dolphin < Pet
	def swim # плавать
		puts @name + ', you can swim a bit.'
		@mood += 7
		@mana -= 2
		timePassed
	end
	def catchFish
		puts @name + ', if you hungry, catch a fish!'
		@health += 5
		@hunger += 5
		@mana -=3
		timePassed
	end
		def help
puts ' Basic commands:
 1.stop      <-- exit game
 2.help      <-- show this menu
 3.stat      <-- show stats of pet
 4.feed      <-- feed your pet
 5.walk      <-- go hunting
 6.sleep     <-- put to sleep
 7.shit      <-- say the pet clean up
 8.treat     <-- mend your pet
 9.play      <-- play with your pet
10.scratch   <-- scratch your pet
11.kick      <-- kick your pet
12.abuse     <-- abuse your pet
13.swim      <-- permit to swim
14.catchFish <-- order to catch the fish
15.wait      <-- wait a bit
<--------------------------------->'
	end
end

class Spider < Pet
	def web # паутина
		puts @name + ', you can cobweb a bit.'
		@mood += 7
		@mana -= 2
		timePassed
	end
	def catchInsect
		puts @name + ', if you hungry, catch a insect!'
		@health += 5
		@hunger += 5
		@mana -=3
		timePassed
	end
		def help
puts ' Basic commands:
 1.stop        <-- exit game
 2.help        <-- show this menu
 3.stat        <-- show stats of pet
 4.feed        <-- feed your pet
 5.walk        <-- go hunting
 6.sleep       <-- put to sleep
 7.shit        <-- say the pet clean up
 8.treat       <-- mend your pet
 9.play        <-- play with your pet
10.scratch     <-- scratch your pet
11.kick        <-- kick your pet
12.abuse       <-- abuse your pet
13.web         <-- permit to web
14.catchInsect <-- order to catch the insect
15.wait        <-- wait a bit
<------------------------------------------>'
	end
end

puts 'Enter the class of your pet: phoenix, dolphin or spider.'
clas = gets.chomp

if clas == 'phoenix'
	pet = Phoenix.new
elsif clas == 'dolphin'
	pet = Dolphin.new
elsif clas == 'spider'
	pet = Spider.new
end

action = gets.chomp
while action != 'stop'
	if action == 'feed'
		pet.feed
	elsif action == 'walk'
		pet.walk
	elsif action == 'sleep'
		pet.sleep
	elsif action == 'shit'
		pet.removeShit
	elsif action == 'treat'
		pet.treat
	elsif action == 'wait'
		pet.wait
	elsif action == 'play'
		pet.play
	elsif action == 'scratch'
		pet.scratch
	elsif action == 'kick'
		pet.kick
	elsif action == 'abuse'
		pet.abuse
	elsif action == 'help'
		pet.help
	elsif action == 'stat'
		pet.stat
	elsif action == 'web'
		pet.web
	elsif action == 'catchInsect'
		pet.catchInsect
	elsif action == 'fly'
		pet.fly
	elsif action == 'catchBird'
		pet.catchBird
	elsif action == 'swim'
		pet.swim
	elsif action == 'catchFish'
		pet.catchFish
	elsif action == 'stat'
		pet.stat
	else
		puts'Does not understand what to do!'
	end
	action = gets.chomp
end
