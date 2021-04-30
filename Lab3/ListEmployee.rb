require_relative "Employee.rb"

class ListEmployee

	def initialize()
		@mas_of_emp = Array.new()
		read_all
	end

	def read_all
		r = File.dirname(__FILE__)
		mas_str = File.read("#{r}/Emp.txt").split(";")

		while(mas_str[0] != nil)
			@mas_of_emp << Employee.creator_empolyee_object_from_string(mas_str[0..11])
			mas_str.slice!(0..11)
		end
	end

	def write_all
		r = File.dirname(__FILE__)
		File.write("#{r}/Emp.txt", @mas_of_emp.join("\n\n"))
	end

	def add_person(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
		person = Employee.new(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
		@mas_of_emp << person
	end

	def finder_fio(str_fio)
		@mas_of_finds = Array.new()
		@mas_of_emp.each do |pers|
			if(pers.fio == str_fio)
				@mas_of_finds << pers
			end
		end
		@mas_of_finds
	end

	def finder_email(str_email)
		@mas_of_finds = Array.new()
		@mas_of_emp.each do |pers|
			if(pers.email == str_email)
				@mas_of_finds << pers
			end
		end
		@mas_of_finds
	end

	def finder_tel(str_tel)
		@mas_of_finds = Array.new()
		@mas_of_emp.each do |pers|
			if(pers.telephone == pers.tel_stabilizator(str_tel))
				@mas_of_finds << pers
			end
		end
		@mas_of_finds
	end


	def printer
		@mas_of_emp #Добавить цифры?
	end

end