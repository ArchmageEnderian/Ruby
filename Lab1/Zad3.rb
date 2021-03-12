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
    puts "#{testVar} = 0"

elsif permach == 1
    puts "#{testVar} = 1"

else
    puts "#{testVar} = ачтогде"

end
