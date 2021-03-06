require_relative "ListEmployee.rb"
require_relative "Employee.rb"


class TerminalViewEmp

	r = File.dirname(__FILE__)
	#file = File.open("#{r}/Emp.txt")

	def initialize()
		system "clear"
		print "Unit-Test is under processing"
		@listed = ListEmployee.new
		sleep(1)
		print "."
		sleep(1)
		print "."
		sleep(1)
		print "."
		sleep(1)
	end

	def menu()
		self.printer
		flag = 1
		while flag != 0
			puts "Выберите команду\n1 - Добавить нового пользователя\n2 - Вывод пользователей\n3 - Поиск пользователя\n4 - Режим редактирования\n5 - Режим удаления\n6 - Сохранение в файл\n7 - Сортировка\n8 - Выход\n"
			print "Ваш выбор: "
			flag = gets.chomp.to_i
			case flag
				when 1
					self.adder
				when 2
					self.printer
				when 3
					self.group_finder
				when 4
					self.changer
				when 5
					self.deleter
				when 6
					@listed.write_all
				when 7
					self.sorter
				when 8
					break
			end
		end
		@listed.write_all
	end

	def changer
		self.printer
		puts "Выберите запись для изменения"
		print "Ваш выбор: " #Через методы класса Emp
		choise = gets.chomp
		puts "1)ФИО\n2)Серия\n3)Номер\n4)Специализация\n5)ДР\n6)Контакты\n7)Почта\n8)Адресс\n9)Стаж\n10)Предудыщая работа\n11)Прошлая специальность\n12)Заработная Плата\n0)Выход"
		puts "Выберите поле для изменения"
		print "Ваш выбор: "
		i = gets.chomp.to_i
		puts "Введите новые данные"
		print "Ваш выбор: "
		strr = gets.chomp
		if Employee.is_fio_correct?(choise)
			@listed.person_checker_fio(choise, i, strr)
			puts "Готово!"
		elsif Employee.is_telephone_correct?(choise)
			@listed.person_checker(choise, i, strr)
			puts "Готово!"
		elsif Employee.is_email_correct?(choise)
			@listed.person_checker(choise, i, strr)
			puts "Готово!"
		else
			puts "Неверный формат ввода"
		end

	end

	def group_finder
		puts "Выберите поле поиска\n1 - ФИО\n2 - Email\n3 - Телефон\n0 - Выход"
		print "Ваш выбор: "
		choise = gets.chomp.to_i
		puts ""
		case choise
			when 1
				self.find_fio
			when 2
				self.find_email
			when 3
				self.find_tel
			when 0
				#skippingo#
		end
	end

	def find_fio
		str = gets.chomp
		system "clear"
		puts "====================", @listed.finder_fio(str), "===================="
	end

	def find_email
		str = gets.chomp
		system "clear"
		puts "====================", @listed.finder_email(str), "===================="
	end
		def find_tel
		str = gets.chomp
		system "clear"
		puts "====================", @listed.finder_tel(str), "===================="
	end

	def deleter
		self.printer
		puts "Выберите запись для изменения (введите номер)"
		choise = (gets.chomp.to_i) - 1
		@listed.person_killer(choise)
	end

	def sorter
		system "clear"
		self.printer
		puts "1)ФИО\n2)Серия\n3)Номер\n4)Специализация\n5)ДР\n6)Контакты\n7)Почта\n8)Адресс\n9)Стаж\n10)Предудыщая работа\n11)Прошлая специальность\n12)Заработная Плата\n0)Выход"
		puts "Выберите поле сортировки"
		choise = (gets.chomp.to_i) - 1
		puts "====================", @listed.field_sort(choise), "===================="

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