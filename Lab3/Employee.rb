class Employee
#Getter/Setter (attr_accessor)
	attr_accessor :birthdate, :adress, :passport_ser, :passport_num, :spec, :worktime, :last_work_place, :last_spec, :last_money
#Переменные класса

#Конструктор
	def initialize(fio, birthdate, telephone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place = NULL, last_spec = NULL, last_money = NULL)
		self.fio = fio
		@birthdate = birthdate
		self.telephone = telephone
		@adress = adress
		self.email = email
		@passport_ser = passport_ser
		@passport_num = passport_num
		@spec = spec	
		@worktime = worktime
		@last_work_place = last_work_place
		@last_spec = last_spec
		@last_money = last_money
	end

	#Getter/Setter (ручками)
	
	def fio
    	@fio
	end

	def fio=(fio)
    	@fio = fio_stabilizator(fio)
	end

	def telephone
    	@telephone
	end

	def telephone=(telephone)
    	@telephone = tel_stabilizator(telephone)
	end

	def email
    	@email
	end

	def email=(email)
    	@email = email_stabilizator(email)
	end

# ^(([+](7))|(8))(\-| |\()?\d{3}(\-| |\))?\d{7}$ (Регулярка (тестовая) для номера)
# ^([А-Яа-я]+[- ]+)([А-Яа-я]*[- ]+)([А-Яа-я]*[- ]*)+ (Регулярка для имени)

	def to_s
    	t = "ФИО: #{@fio}; Серия: #{@passport_ser}; Номер: #{@passport_num};\nСпециализация: #{@spec}; ДР: #{@birthdate};\nКонтакты: #{@telephone}; Почта: #{@email}; Адресс: #{@adress};\nСтаж: #{@worktime};\nПредудыщая работа: #{@last_work_place}; Прошлая специальность: #{@last_spec}; ЗП: #{@last_money};"
    	return t
	end

	def self.creator_empolyee_object_from_string(mas_str_constr)
		fio = mas_str_constr[0].split(":")[1].strip
		birthdate = mas_str_constr[4].split(":")[1].strip
		telep = mas_str_constr[5].split(":")[1].strip 
		adress = mas_str_constr[7].split(":")[1].strip
		email = mas_str_constr[6].split(":")[1].strip
		passport_ser = mas_str_constr[1].split(":")[1].strip
		passport_num = mas_str_constr[2].split(":")[1].strip
		spec = mas_str_constr[3].split(":")[1].strip
		worktime = mas_str_constr[8].split(":")[1].strip
		last_work_place = mas_str_constr[9].split(":")[1].strip
		last_spec = mas_str_constr[10].split(":")[1].strip
		last_money = mas_str_constr[11].split(":")[1].strip
		pers = Employee.new(fio, birthdate, telep, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
		return pers
	end

	def self.is_fio_correct?(fio)
		fio.match(/^([А-Яа-я]+[- ]+)([А-Яа-я]*[- ]+)([А-Яа-я]*[- ]*)+/)
	end

	def self.is_telephone_correct?(tel)
		tel.match(/^(\+\s*?7|8)([- ()]*\d){10}$/)
	end

	def self.is_email_correct?(email)
		email.match(/^[\w\_\.]+\@\w+\.[\w\.]+$/)
	end

	#Пофиксить
	def fio_stabilizator(fio)
		raise "Неверный формат ФИО: #{fio}" unless Employee.is_fio_correct? fio.strip
		word_fio = fio.split()
		mas = Array.new()
		word_fio.each_index { |i| mas[i] = word_fio[i].split("-").each { |sl| sl.capitalize } } #Иван-дурак -> Иван-Дурак ???
		return mas.join(" ")
	end

	def email_stabilizator(email)
		raise "Неверный формат электронной почты: #{email}" unless Employee.is_email_correct? email.strip
		return email.downcase
	end

	def tel_stabilizator(phone)
		raise "Неверный формат телефона: #{phone}" unless Employee.is_telephone_correct? phone.strip
		nums = phone.split(//)
		if(nums[0] == "8")
			nums.insert(0, " ")
		end

		if(nums[2].match?(/\d/))
			nums.insert(2, "-")
		end
		if(nums[6].match?(/\d/))
			nums.insert(6, "-")
		end

		if(nums[1] == "8")
			return tru_tel = "+7-" + nums[3..13].join("")
		else
			return tru_tel = nums[0..13].join("")
		end
	end
end
#Парень
#15
#88005553535
#Гдето
#мыло
#серия
#номер
#спец
#время
#место
#специал
#15000