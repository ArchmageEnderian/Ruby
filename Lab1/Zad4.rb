puts "Введите команду: (0 чтобы выйти)"
trmnl = gets.chomp
system(trmnl)
while trmnl != "0"
	trmnl = gets.chomp
	system(trmnl)
end
