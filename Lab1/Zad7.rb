def prost_num(n)
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

puts "Ну введи число, попробуй"
nums = gets.chomp.to_i
max = -999999
counter = 0
for i in 1..nums
	if nums % i == 0 && prost_num(i)
		max = i
	end
end
print "А ты хорош, ну ладно! ", max
puts ""
