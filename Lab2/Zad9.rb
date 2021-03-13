def Num1(str)
	puts "Вывод: "
	puts str.shuffle.to_s
end

def Num2(str)
	str.map { |n| 
		if n.length % 2 == 0
			puts n
		end
	}
end

def Num3(str)
	l = str.length
	str1 = []
	str.map { |n| 
		if n.strip.downcase == "белый"
			str1.unshift(n)
		elsif n.strip.downcase == "красный"
			str1 << n
		else
			str1.insert(l/2, n)
		end
	}
	return str1.compact.join(" ")
end

puts "Введите строку: "
main_str = gets.chomp.split()

puts "Введите номер задания (1, 2, 3): "
str = gets.chomp.strip.downcase

case str
when "1"
	Num1(main_str.dup)
when "2"
	Num2(main_str.dup)
when "3"
	print "Ответ: ", Num3(main_str), "\n"
end