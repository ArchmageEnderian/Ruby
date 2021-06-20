require_relative "DataBaseClass.rb"
require_relative "Employee.rb"

class ListEmployee

	@sing

	def initialize()
		@mas_of_emp = Array.new()
		#read_all
		@sing = DB_Controller.instance
		grub
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

	def grub
		arr = Array.new
		arr = @sing.grub_form_database
		#puts arr[0]
		arr.each do |stric|
			#puts stric, "\n====================================================================================================\n"
			@mas_of_emp << Employee.creator_empolyee_object_from_string(stric)
		end

	end

	#====================================================================================================================#

	def add_person(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
		person = Employee.new(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
		@mas_of_emp << person
		DB_Controller.add_person_to_db(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
	end

	#====================================================================================================================#


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

	def person_checker_fio(pers_id, field_id, new_str)
		objj = ""
		@mas_of_emp.each { |p| 
			it = 0
			if (p.fio == pers_id) 
				objj = it
			end
			it += 1
			}
		person_changer(objj, field_id, new_str)
	end

	def person_changer(pers_id, field_id, new_str)
		#костыль
		case field_id
			when 1
				@mas_of_emp[pers_id].fio = new_str
			when 2
				@mas_of_emp[pers_id].birthdate = new_str
			when 3
				@mas_of_emp[pers_id].telephone = new_str
			when 4
				@mas_of_emp[pers_id].adress = new_str
			when 5
				@mas_of_emp[pers_id].email = new_str
			when 6
				@mas_of_emp[pers_id].passport_ser = new_str
			when 7
				@mas_of_emp[pers_id].passport_num = new_str
			when 8
				@mas_of_emp[pers_id].spec = new_str
			when 9
				@mas_of_emp[pers_id].worktime = new_str
			when 10
				@mas_of_emp[pers_id].last_work_place = new_str
			when 11
				@mas_of_emp[pers_id].last_spec = new_str
			when 12
				@mas_of_emp[pers_id].last_money = new_str
		end
	end

	def field_sort(field)
		#mas_fios = Array.new
		@mas_of_emp.sort { |cl1, cl2|
			qwe1 = cl1.fio[0]
			qwe2 = cl2.fio[0]

			if (qwe1 > qwe2)
				qwe = cl1
				cl1 = cl2
				cl2 = qwe
			end
		}
		#mas_fios.sort
		return mas_of_emp[0..4]
	end

	def person_killer(pers_to_kill)
		fio_to_del = @mas_of_emp[pers_to_kill].fio
		@sing.del_person_from_db(fio_to_del)
		@mas_of_emp.delete_at(pers_to_kill)
	end

	def printer
		@mas_of_emp #Добавить цифры?
	end

end

#реализовать программу, которая выводит свой код и ничего более - 3 лабы простят