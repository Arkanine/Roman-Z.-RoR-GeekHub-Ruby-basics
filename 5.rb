class Ball
	def initialize
		#Положительные:
		a = 'It is certain' #(Бесспорно)
		b = 'It is decidedly so' #(Предрешено)
		c = 'Without a doubt' #(Никаких сомнений)
   	d = 'Yes definitely' #(Определённо да)
    e = 'You may rely on it' #(Можешь быть уверен в этом)
		positive = [a,b,c,d,e]

		#Нерешительно положительные
    f = 'As I see it, yes' #(Мне кажется — «да»)
    g = 'Most likely' #(Вероятнее всего)
    h = 'Outlook good' #(Хорошие перспективы)
    i = 'Signs point to yes' #(Знаки говорят — «да»)
    j = 'Yes' #(Да)
		hesitantly_positive = [f,g,h,i,j]

		#Нейтральные
    k = 'Reply hazy, try again' #(Пока не ясно, попробуй снова)
    l = 'Ask again later' #(Спроси позже)
    m = 'Better not tell you now' #(Лучше не рассказывать)
    n = 'Cannot predict now' #(Сейчас нельзя предсказать)
    o = 'Concentrate and ask again' #(Сконцентрируйся и спроси опять)
		neutral = [k,l,m,n,o]

		#Отрицательные
    p = 'Dont count on it' #(Даже не думай)
    q = 'My reply is no' #(Мой ответ — «нет»)
    r = 'My sources say no' #(По моим данным — «нет»)
    s = 'Outlook not so good' #(Перспективы не очень хорошие)
    t = 'Very doubtful' #(Весьма сомнительно) 
		negative = [p,q,r,s,t]
	
		array = [positive[rand(5)], hesitantly_positive[rand(5)], neutral[rand(5)], negative[rand(5)]]
	
		@shake = array[rand(4)]
		puts 'I think...'
		sleep(3)
	end
	
	attr_accessor :shake
	
end	

puts Ball.new.shake
