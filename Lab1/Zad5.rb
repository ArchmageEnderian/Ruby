puts "Введите число: "
n = gets.chomp
num = n.to_i
sum = 0
while num != 0
	sum += num % 10
	num /= 10
end
print "Сумма цифр числа: ", sum
puts ""
