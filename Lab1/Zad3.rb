puts "Введите ваш любимый язык программирования: "
lang = gets.chomp.downcase

case lang #Использован оператор switch/case
when "ruby"
	puts "Не подлизывайся!"
when "python"
	puts "Левон, не списывай)"
else
	puts "#{lang} не интересно, как Ruby изучишь - сразу станет любимым :)"
end

puts "1/0/Иное?"
permach = gets.chomp.to_i
if permach == 0 #Оператор if/elsif/else
    puts "#{permach} = 0 (if)"

elsif permach == 1
    puts "#{permach} = 1 (elsif)"

else
    puts "#{permach} = ачтогде (classic else)"

end

unless permach == 0 #Оператор unless
    puts "#{permach} = 0 (unless)"

else
    puts "#{permach} = 0 (else(unless))"

end
