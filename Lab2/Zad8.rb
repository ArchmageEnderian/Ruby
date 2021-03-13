puts "Введите список: "
array = gets.chomp.split().map { |str| str.to_i }
print "Вывод: ", array.max