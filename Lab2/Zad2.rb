
def sum(arr)
	return arr.sum
end

def proizv(arr)
	return arr.reduce(1, :*)
end

def mins(arr) 
	return arr.min
end

def maxs(arr)
	return arr.max
end

array = gets.chomp.split().map { |str| str.to_i }

print "Список: ", array
puts ""
print "Сумма списка: ", sum(array)
puts ""
print "Произведение списка: ", proizv(array)
puts ""
print "Минимум списка: ", mins(array)
puts ""
print "Максимум списка: ", maxs(array)
puts ""
