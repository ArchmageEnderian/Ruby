r = File.dirname(__FILE__)
require "#{r}/Employee.rb"

class TerminalList

	def initialize()
		@mas_of_emp = Array.new()
		self.read_all
	end

	def read_all
		r = File.dirname(__FILE__)
		mas_str = File.read("#{r}/Emp.txt").split(";")
		#slice! "ФИО: Илидан Ярость Бури"
		@fio = mas_str[0].split(":")[1].strip
		@birthdate = mas_str[4].split(":")[1].strip
		@telep = mas_str[5].split(":")[1].strip 
		@adress = mas_str[7].split(":")[1].strip
		@email = mas_str[6].split(":")[1].strip
		@passport_ser = mas_str[1].split(":")[1].strip
		@passport_num = mas_str[2].split(":")[1].strip
		@spec = mas_str[3].split(":")[1].strip
		@worktime = mas_str[8].split(":")[1].strip
		@last_work_place = mas_str[9].split(":")[1].strip
		@last_spec = mas_str[10].split(":")[1].strip
		@last_money = mas_str[11].split(":")[1].strip
		@Person = Employee.new(@fio, @birthdate, @telep, @adress, @email, @passport_ser, @passport_num, @spec, @worktime, @last_work_place, @last_spec, @last_money)
		@mas_of_emp << @Person
	end

	def write_all
		r = File.dirname(__FILE__)
		File.write("#{r}/Emp.txt", @mas_of_emp.join("\n\n"))
	end

def add_person()
		#puts "Ввод:"
		#@fio = gets.chomp
		#@birthdate = gets.chomp
		#@telephone = gets.chomp
		#@adress = gets.chomp
		#@email = gets.chomp
		#@passport_ser = gets.chomp
		#@passport_num = gets.chomp
		#@spec = gets.chomp
		#@worktime = gets.chomp
		#@last_work_place = gets.chomp
		#@last_spec = gets.chomp
		#@last_money = gets.chomp
		person = Employee.new("Иллидан Ярость Бури", "00.00.0000", "88005553535", "Калимдор", "IllidanStormrage@Blizzard.com", "6666", "666666", "Повелитель Запределья, Хозяин Черного Храма", "Я не видел отпуск уже 10000 лет!", "Калимдор", "Чародей, Воин, Боец, Маг, Разбойник, Охотник на демонов", "∞ Маны из 'Колодца Маны'")
		@mas_of_emp << person
		puts "Добавить еще?\n1 - Да\n0 - Нет"
		@ff = gets.chomp.to_i
		@qq = false
		if(@ff == 1 && @qq != true)
			self.add_person()
		else
			self.printer
			@qq = true
		end
	end








end