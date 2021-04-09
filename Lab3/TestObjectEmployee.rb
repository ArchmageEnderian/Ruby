r = File.dirname(__FILE__)
require "#{r}/Employee.rb"

puts "Ввод:"
#fio = gets.chomp
#birthdate = gets.chomp
#telephone = gets.chomp
#adress = gets.chomp
#email = gets.chomp
#passport_ser = gets.chomp
#passport_num = gets.chomp
#spec = gets.chomp
#worktime = gets.chomp
#last_work_place = gets.chomp
#last_spec = gets.chomp
#last_money = gets.chomp

Person = Employee.new("Салтыков - щЕдрин Иван-дурак Ахмед заде", "00.00.0000", "88005553535", "Калимдор", "IllidanStormrage@Blizzard.com", "6666", "666666", "Повелитель Запределья, Хозяин Черного Храма", "Я не видел отпуск уже 10000 лет!", "Калимдор", "Чародей, Воин, Боец, Маг, Разбойник, Охотник на демонов", "∞ Маны из 'Колодца Маны'")

#Person = Employee.new(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)

puts Person
