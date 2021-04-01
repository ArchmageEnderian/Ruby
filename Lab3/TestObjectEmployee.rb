r = File.dirname(__FILE__)
require "#{r}/Employee.rb"

puts "Ввод:"
fio = gets.chomp
birthdate = gets.chomp
telepfone = gets.chomp
adress = gets.chomp
email = gets.chomp
passport_ser = gets.chomp
passport_num = gets.chomp
spec = gets.chomp
worktime = gets.chomp
last_work_place = gets.chomp
last_spec = gets.chomp
last_money = gets.chomp

Person = Employee.new(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)

puts "Добавить номер? (1/0)"
condition = gets.chomp.to_i
case condition
when 1
	puts Employee.Telepfone?("+7-918-1234567")
when 0
	puts "NOPE"
end

puts Person
