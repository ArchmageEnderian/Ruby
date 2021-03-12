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



def Num1(array)
	m = mins(array)
	puts "Вот: "
	for arg in 0..(m -1)
		print array[arg], " "
	end
	puts "\n"
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

puts "Введите номер задания (1, 2, 3): "
str = gets.chomp.strip.downcase

case str
when "1"
	Num1(array)
when "2"
	#Num2(array)
when "3"
	#Num3(array)
when "4"
	#Num4(array)
end
	