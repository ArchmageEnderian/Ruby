def Reader(filename, encoding="UTF-8")
    return Array.new if !File.exist?(filename)
    file = File.new(filename, "r:#{encoding}")
    file.readlines.map{ |i| i.strip }.filter{ |i| !i.empty? }.map{ |i| i.to_i }
end

def mins(arr) 
	counter = 0
	min_c = 0
	min = arr.first
	for arg in arr
		if min >= arg 
			min_c = counter
		end
		counter += 1
	end
	return min_c
end

def maxs(arr)
	counter = 0
	max_c = 0
	max = arr.first
	for arg in arr
		if max < arg
			max = arg
			max_c = counter
		end
		counter += 1
	end
	return max_c
end

def Num1(array)
	m = mins(array)
	puts "Вот: "
	for arg in 0..(m -1)
		print array[arg], " "
	end
	puts "\n"
end

def Num2(array)
	m = maxs(array)
	puts "Вот: "
	for arg in m..array.length
		print array[arg], " "
	end
	puts "\n"
end

def Num3?(array)
	for arg in 1..(array.length - 1)
		if ((array[arg - 1] > 0 && array[arg] > 0))
			return false
			break
		elsif ((array[arg - 1] < 0 && array[arg] < 0))
			return false
			break
		end
	end
	return true
end

def Num4(array)
	puts "Задайте дополнительно интервал a..b: "
	print "a = "
	a = gets.chomp.to_i
	print "b = "
	b = gets.chomp.to_i
	sum = 0
	for arg in array
		if (arg > a && arg < b)
			sum += arg
		end
	end
	return sum
end

def Num5(array)
	sum = 0
	counter = 0
	for arg in array
		if sum < arg
			counter += 1
		end
		sum += arg
	end
	return counter
end

puts "Введите способ задания списка: "
str = gets.chomp.strip.downcase

case str
when "console"
	puts "Введите список: "
	array = gets.chomp.split().map { |str| str.to_i }
when "file"
    puts "Введите название файла:" 
    array = Reader(str = gets.chomp)
else
    abort "Что-то пошло не так"
end

puts "Введите номер задания (1, 2, 3, 4, 5): "
str = gets.chomp.strip.downcase

case str
when "1"
	Num1(array)
when "2"
	Num2(array)
when "3"
	print "Ответ: ", Num3?(array), "\n"
when "4"
	print "Ответ: ", Num4(array), "\n"
when "5"
	print "Ответ: ", (Num5(array) - 1), "\n"
end
	