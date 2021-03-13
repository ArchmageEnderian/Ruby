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
	#print "Ответ: ", Num3?(array), "\n"
end