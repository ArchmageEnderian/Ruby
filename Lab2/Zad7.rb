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
	array[0..(m - 1)].each { |arg| print arg, " " }
	puts "\n"
end

def Num2(array)
	m = maxs(array)
	puts "Вот: "
	array[(m + 1)..(array.length)].each { |arg| print arg, " " }
	
	puts "\n"
end

def Num3?(array)
	if array.first > 0
		flag = 1
	else
		flag = -1
	end
	array[1..(array.length - 1)].each { |arg|  
		if (flag > 0 && arg > 0)
			return false
			break
		elsif (flag < 0 && arg < 0)
			return false
			break
		end 

		if arg > 0
			flag = 1
		else
			flag = -1
		end
	}
	return true
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
end
	