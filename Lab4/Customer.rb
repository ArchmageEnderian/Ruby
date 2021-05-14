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
		if(@status_current == true) 
			return "Оформлен"
		else
			return "Не оформлен"
		end
	end

	def status_current=(status_current)
		@status_current = status_checker(status_current)
	end

#====================================================================================================#

	def status_checker(stat)
		raise "Количество заказов превышено!" unless Customer.is_status_opened? stat
		#=================Добавление заказа#=================#
		return stat
	end

	def fio_stabilizator(fio)
		raise "Неверный формат ФИО: #{fio}" unless Customer.is_fio_correct? fio.strip
		word_fio = fio.split()
		mas = Array.new()
		word_fio.each_index { |i| mas[i] = word_fio[i].split("-").each { |sl| sl.capitalize } } #Иван-дурак -> Иван-Дурак ???
		return mas.join(" ")
	end

#====================================================================================================#

	def self.is_status_opened?(status_current)
		if(@status_current != true)
			return true
		end
		return false
	end

	def self.is_fio_correct?(fio)
		fio.match(/^([А-Яа-я]+[- ]+)([А-Яа-я]*[- ]+)([А-Яа-я]*[- ]*)+/)
	end

#====================================================================================================#

def to_s
    t = "ФИО: #{@fio}; Серия пасспорта: #{@passport_seria}; Номер пасспорта: #{@passport_number}; Счет: #{@money}; Статус текущей сделки: #{@status_current}"
    return t
end

def self.string_to_object(mass_str)
	fio = mass_str[0].split(":")[1].strip
	passport_ser = mass_str[1].split(":")[1].strip
	passport_num = mass_str[2].split(":")[1].strip
	money = mass_str[3].split(":")[1].strip
	status = mass_str[4].split(":")[1].strip

	human = Customer.new(fio, passport_ser, passport_num, money, status)
	return human
end




































end