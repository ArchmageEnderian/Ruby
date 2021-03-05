def summ_num(n)
	num = n.to_i
	sum = 0
	while num != 0
		sum += num % 10
		num /= 10
	end
	return sum
end

def pr_num(n)
	num = n.to_i
	sum = 1
	while num != 0
		sum *= num % 10
		num /= 10
	end
	return sum
end

def max_num(n)
	num = n.to_i
	max = num % 10
	num /= 10
	while num != 0
		q = num % 10
		if max < q then
			max = q
		end
		num /= 10
	end
	return max
end

def min_num(n)
	num = n.to_i
	min = num % 10
	num /= 10
	while num != 0
		q = num % 10
		if min > q then
			min = q
		end
		num /= 10
	end
	return min
end

puts "Введите число: "
num_test = gets.chomp
print "Сумма цифр числа: ", summ_num(num_test)
puts ""
print "Произведение цифр числа: ", pr_num(num_test)
puts ""
print "Максимальная цифра числа: ", max_num(num_test)
puts ""
print "Минимальная цифра числа: ", min_num(num_test)
puts ""
