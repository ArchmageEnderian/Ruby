class Customer

	attr_accessor :passport_ser, :passport_num, :money

	def initialize(fio, passport_ser, passport_num, money = 0, status = false)
		self.fio = fio
		@passport_seria = passport_ser
		@passport_number = passport_num
		@money = money
		self.status_current = status
	end
#====================================================================================================#
	def fio
    	@fio
	end

	def fio=(fio)
    	@fio = fio_stabilizator(fio)
	end

	def status_current
		@status_current
	end

	def status_current=(status_current)
		@status_current = status_checker(status_current)
	end
#====================================================================================================#
	def status_checker(stat)
		raise "Rоличество заказов превышено!" unless Customer.is_status_opened? stat
		#=================Добавление заказа#=================#
		return stat
	end

	def fio_stabilizator(fio)
		raise "Неверный формат ФИО: #{fio}" unless Employee.is_fio_correct? fio.strip
		word_fio = fio.split()
		mas = Array.new()
		word_fio.each_index { |i| mas[i] = word_fio[i].split("-").each { |sl| sl.capitalize } } #Иван-дурак -> Иван-Дурак ???
		return mas.join(" ")
	end
#====================================================================================================#
	def self.is_status_opened?(status_current)
		if(@status_current != true)
	end

	def self.is_fio_correct?(fio)
		fio.match(/^([А-Яа-я]+[- ]+)([А-Яа-я]*[- ]+)([А-Яа-я]*[- ]*)+/)
	end











































end