require_relative "ListOfCustomers.rb"
require_relative "Customer.rb" 

class Terminal
	r = File.dirname(__FILE__)
	file = File.open("#{r}/Customers.txt")

	def initialize()
		@listed = ListOfCustomers.new
		system "clear"
		print "Unit-Test is under processing"
		sleep(1)
		print "."
		sleep(1)
		print "."
		sleep(1)
		print "."
		sleep(1)
		puts ""
	end

	def menu()
		system "clear"
		#self.printer
		flag = 1
		while flag != 0
			puts "Выберите команду\n1 - Добавить нового покупателя\n2 - Вывод покупателей\n3 - Поиск покупателя\n4 - Режим редактирования\n5 - Режим удаления\n6 - Сохранение в файл\n7 - Сортировка?\n8 - Выход\n"
			print "Ваш выбор: "
			flag = gets.chomp.to_i
			case flag
				when 1
					self.adder
				when 2
					self.printer
				when 3
					#self.group_finder
				when 4
					#self.changer
				when 5
					#self.deleter
				when 6
					#@listed.write_all
				when 7
					#self.sorter
				when 8
					break
			end
		end
		@listed.write_all
	end

	def printer
		system "clear"
		puts "====================", @listed.printer , "===================="
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

		@listed.add_customer("Иллидан Ярость Бури", 9999, 999999, 0, false)

		puts "\nДобавить еще?\n1 - Да\n0 - Нет\n"
		@ff = gets.chomp.to_i
		@qq = false
		if(@ff == 1 && @qq != true)
			self.adder()
		else
			self.printer
			@qq = true
		end
	end













































end

Terminal.new().menu