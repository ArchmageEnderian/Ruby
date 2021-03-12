def inputs(nina)
	array = []
	for i in 1..nina
		ar_num = gets.chomp.to_i
		array << ar_num
	end
	return array
end

def adders1(array, imp)
	array << imp
end






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

puts "Введите N: "
n = gets.chomp.to_i
puts "Введите массив: "
main_array = inputs(n)
copy_array = main_array

puts "Введите 1 число: "
imp = gets.chomp.to_i

print "1 способ: ", adders1(copy_array, imp)
puts ""

puts ""
puts ""
puts ""


print "Список: ", main_array
puts ""
print "Сумма списка: ", sum(main_array)
puts ""
print "Произведение списка: ", proizv(main_array)
puts ""
print "Минимум списка: ", mins(main_array)
puts ""
print "Максимум списка: ", maxs(main_array)
puts ""
