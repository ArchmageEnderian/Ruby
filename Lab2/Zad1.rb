def sum(arr)
	summ = 0
	for arg in arr
		summ += arg
	end
	return summ
end

def proizv(arr)
	pr = 1
	for arg in arr
		pr *= arg
	end
	return pr
end

def mins(arr) 
	min = arr.first
	for arg in arr
		if min > arg #=> Что?! Почему?
			min = arg
		end
	end
	return min
end

def maxs(arr)
	max = arr.first
	for arg in arr
		if max < arg #=> Что?! Почему?
			max = arg
		end
	end
	return max
end


ar_num = gets.chomp.to_i
array = []
while ar_num !=0
	array << ar_num
	ar_num = gets.chomp.to_i
end
print array
puts ""
print sum(array)
puts ""
print proizv(array)
puts ""
print mins(array)
puts ""
print maxs(array)
puts ""
