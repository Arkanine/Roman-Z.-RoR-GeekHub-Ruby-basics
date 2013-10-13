array =  [621, 448, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 12, 126, 532, 387, 441, 471, 337, 
446, 18, 36, 202, 572, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 300] 

#- узнать количество элементов в массиве (напр, puts array.count) 
puts array.count
puts 
# - перевернуть массив 
puts array.reverse.join(',')
puts
# - найти наибольшее число 
puts array.max
puts
# - найти наименьшее число 
puts array.min
puts
#  - найти среднее арифметическое 
number = 0
array.each do |middle|
	number += middle
end
puts number/array.count
puts
# - отсортировать от меньшего к большему
puts array.sort.join(',')
puts
# - отсортировать от большего к меньшему
puts array.sort.reverse.join(',')
puts
# - удалить все нечетные числа 
new = []
array.each do |even|
	if even%2 == 0
		new.push(even)
	end
end
puts new.join(',')
a = array.select { |x| x%2==0 } # - второй вариант
puts a.join(',')
puts
# - оставить только те числа, которые без остатка делятся на 3 
new = []
array.each do |three|
	if three%3 == 0
		new.push(three)
	end
end
puts new.join(',')
a = array.select { |x| x%3==0 } # - второй вариант
puts a.join(',')
puts
# - удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
puts array.uniq.join(',')
puts 
# - разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого 
new = []
array.each do |number|
	new.push(number/10.to_f)
end
puts new.join(',')
a = array.collect { |x| x/10.to_f } # - второй вариант
puts a.join(',')
puts
# - получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве 
alph = ('a'.. 'z').to_a
new = []
letters = []
array.each do |even|
	if even <= 26
		new.push(even)
	end
end
new.each do |letter|
	letters.push(alph[letter])
end
puts letters.join(',')
puts
# - поменять местами минимальный и максимальный элементы массива
a = array.max
b = array.min
c = array.index(a)
d = array.index(b)
array[c] = b
array[d] = a
puts array.join(',')
puts
# - найти элементы, которые находятся перед минимальным числом в массиве 
b = array.index(array.min)
puts array[0.. b-1].join(',')
puts array.slice(0,b).join(',') # - второй вариант
puts
# - необходимо найти три наименьших элемента 
new = array.sort[0..2]
puts new.join(',')
