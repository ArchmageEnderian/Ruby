r = File.dirname(__FILE__)
require "#{r}/ListEmployee.rb"


class TerminalViewEmp

	r = File.dirname(__FILE__)
	file = File.open("#{r}/Emp.txt")

	def initialize()
		@listed = ListEmployee.new
	end

	def menu()
		system "clear"
		flag = 1
		while flag != 0
			puts "Выберите команду\n1 - Добавить пользователя\n2 - Вывод пользователя\n3 - Запись в файл\n4 - Принудительное чтение из файла\n0 - Выход\n"
			flag = gets.chomp.to_i
			puts ""
			case flag
				when 1
					self.adder
				when 2
					self.printer
				when 3
					@listed.write_all
				when 4
					#self.read_all
				when 0
				break
			end
		end
	end

	def adder
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

		@listed.add_person("Иллидан Ярость Бури", "00.00.0000", "88005553535", "Калимдор", "IllidanStormrage@Blizzard.com", "6666", "666666", "Повелитель Запределья, Хозяин Черного Храма", "Я не видел отпуск уже 10000 лет!", "Калимдор", "Чародей, Воин, Боец, Маг, Разбойник, Охотник на демонов", "∞ Маны из 'Колодца Маны'")

		puts "Добавить еще?\n1 - Да\n0 - Нет"
		@ff = gets.chomp.to_i
		@qq = false
		if(@ff == 1 && @qq != true)
			self.adder()
		else
			self.printer
			@qq = true
		end








	end


	def printer
		system "clear"
		puts "====================", @listed.printer , "===================="
	end


end

#person = Employee.new(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
#person = Employee.new("Салтыков - щЕдрин Иван-дурак Ахмед заде", "00.00.0000", "88005553535", "Калимдор", "IllidanStormrage@Blizzard.com", "6666", "666666", "Повелитель Запределья, Хозяин Черного Храма", "Я не видел отпуск уже 10000 лет!", "Калимдор", "Чародей, Воин, Боец, Маг, Разбойник, Охотник на демонов", "∞ Маны из 'Колодца Маны'")
#person = Employee.new("Иллидан Ярость Бури", "00.00.0000", "88005553535", "Калимдор", "IllidanStormrage@Blizzard.com", "6666", "666666", "Повелитель Запределья, Хозяин Черного Храма", "Я не видел отпуск уже 10000 лет!", "Калимдор", "Чародей, Воин, Боец, Маг, Разбойник, Охотник на демонов", "∞ Маны из 'Колодца Маны'")


Term = TerminalViewEmp.new().menu