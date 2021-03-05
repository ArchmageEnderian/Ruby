puts "Введите ваш любимый язык программирования: "
lang = gets.chomp
if lang == "Ruby" || lang == "ruby" || lang == "RUBY" then
	puts "Не подлизывайся!"
else
	puts "#{lang} не интересно, как Ruby изучишь - сразу станет любимым :)"
end
