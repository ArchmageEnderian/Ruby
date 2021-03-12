def Summ_num(n)
	num = n.to_i
	sum = 0
	while num != 0
		sum += num % 10
		num /= 10
	end
	return sum
end

def Pr_num(n)
	num = n.to_i
	sum = 1
	while num != 0
		sum *= num % 10
		num /= 10
	end
	return sum
end

def Max_num(n)
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

def Min_num(n)
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

def Prost_num(n)
	num = n.to_i
	count = 0
	for i in 2..num
		if (num % i) == 0 then
			count += 1
		end
	end
	if count > 1 then
		return false
	else return true
	end
end

def Nomer1()
	puts "Ну введи число, попробуй"
	nums = gets.chomp.to_i
	max = -999999
	counter = 0
	for i in 1..nums
		if nums % i == 0 && Prost_num(i)
			max = i
		end
	end
	print "А ты хорош, ну ладно! ", max
	puts ""
end

def Nomer2()
	puts "Ну введи число, попробуй"
	num = gets.chomp.to_i
	pr = 1
	while num != 0
		if (num % 10) % 5 == 0
			pr *= num % 10
		end
		num /= 10
	end
	print "А ты хорош, ну ладно! ", pr
	puts ""
end


puts "Выбирай, смерт"
choise = gets.chomp
case choise
when "1"
	Nomer1()
when "2"
	Nomer2()
when "3"
	#Nomer3()
when ""
	puts "Hello World"
else
	puts "Все не очень, давай по новой!"
end
