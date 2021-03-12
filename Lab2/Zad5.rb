def Reader(filename, encoding="UTF-8")
    return Array.new if !File.exist?(filename)
    file = File.new(filename, "r:#{encoding}")
    file.readlines.map{ |i| i.strip }.filter{ |i| !i.empty? }.map{ |i| i.to_i }
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

puts array