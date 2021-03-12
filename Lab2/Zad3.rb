def inputs(nina)
	array = []
	for i in 1..nina
		ar_num = gets.chomp.to_i
		array << ar_num
	end
	return array
end

def adders1(copy_array, imp)
	copy_array << imp
end

def adders2(copy_array, imp, nani)
	copy_array.insert(nani, imp)
end

def adders3(copy_array, imp)
	copy_array[copy_array.length] = imp
	return copy_array
end

def adders4(copy_array, imp)
	copy_array.unshift(imp)
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

copy_array = main_array.dup

puts "Введите 1 число: "
imp = gets.chomp.to_i

puts ""
print "Список: ", main_array
puts ""

print "1 способ: ", adders1(copy_array, imp)
puts ""
copy_array = []
copy_array = main_array.dup
print "2 способ: ", adders2(copy_array, imp, n)
puts ""
copy_array = []
copy_array = main_array.dup
print "3 способ: ", adders3(copy_array, imp)
puts ""
copy_array = []
copy_array = main_array.dup
print "4 способ: ", adders4(copy_array, imp)
puts ""
puts ""
puts ""
puts ""



print "Сумма списка: ", sum(main_array)
puts ""
print "Произведение списка: ", proizv(main_array)
puts ""
print "Минимум списка: ", mins(main_array)
puts ""
print "Максимум списка: ", maxs(main_array)
puts ""
