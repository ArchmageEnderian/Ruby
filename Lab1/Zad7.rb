def Summ_num(num)
	sum = 0
	while num != 0
		sum += num % 10
		num /= 10
	end
	return sum
end

def Pr_num(num)
	sum = 1
	while num != 0
		sum *= num % 10
		num /= 10
	end
	return sum
end

def Max_num(num)
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

def Min_num(num)
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

def Prost_num(num)
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

def Nomer1(nums) # 11
	max = -999999
	counter = 0
	for i in 1..nums
		if nums % i == 0 && Prost_num(i)
			max = i
		end
	end
	print "А ты хорош, ну ладно! "
	return max
end

def Nomer2(num) # 1557
	pr = 1
	while num != 0
		if (num % 10) % 5 == 0
			pr *= num % 10
		end
		num /= 10
	end
	print "А ты хорош, ну ладно! "
	return pr
end

def NOD(f, s)
	if (f % s == 0) then s 
	else
		c = f % s 
		NOD(s, c) 
	end
end

def Nomer3(nums) # 45 (15 & 20)
	for i in 1..nums
		if ( (nums % i == 0) && (!Prost_num(i)) && (i % 2 == 1) ) 
			max = i
		end
	end
	print "А ты хорош, ну ладно! "
	return NOD(max.to_i, Pr_num(nums).to_i)
end


puts "Ну введи число, попробуй"
num = gets.chomp.to_i
puts "Выбирай, смерт"
choise = gets.chomp
case choise
when "1"
	puts Nomer1(num)
when "2"
	puts Nomer2(num)
when "3"
	puts Nomer3(num)
when ""
	puts "Hello World"
else
	puts "Все не очень, давай по новой!"
end
