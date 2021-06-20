#!/usr/bin/ruby
require 'mysql2'

class DB_Controller

	@instance = new
	private_class_method :new

	def self.instance
		@instance
	end

	def del_person_from_db(fio)
		client.query("DELETE FROM emp WHERE fio = '" + fio + "'")
	end

	def add_person_to_db(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
		client.query("INSERT INTO emp (fio, birthday, tel, adress, email, pass_ser, pass_num, spec, worktime, l_w, l_spec, l_m) VALUES (" + fio + ", " + birthdate + ", " + telepfone + ", " + adress + ", " + email + ", " + passport_ser + ", " + passport_num + ", " + spec + ", " + worktime + ", " + last_work_place + ", " + last_spec + ", " + last_money + ")") 
	end

	def grub_form_database
		client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "myDataBase")
		results = client.query("SELECT * FROM emp")

		all_mas = Array.new
		mini_mas = Array.new

		results.each do |row|
			mini_mas << " С: " + row["fio"].to_s
			mini_mas << " С: " + row["pass_ser"].to_s
			mini_mas << " С: " + row["pass_num"].to_s 
			mini_mas << " С: " + row["spec"].to_s
			mini_mas << " С: " + row["birthday"].to_s
			mini_mas << " С: " + row["tel"].to_s
			mini_mas << " С: " + row["email"].to_s
			mini_mas << " С: " + row["adress"].to_s
			mini_mas << " С: " + row["worktime"].to_s
			mini_mas << " С: " + row["l_w"].to_s
			mini_mas << " С: " + row["l_spec"].to_s
			mini_mas << " С: " + row["l_m"].to_s
			all_mas << mini_mas
			#puts all_mas[0], "\n====================================================================================================\n"
		end
		#puts all_mas
		return all_mas
	end
end


#row["fio"], row["birthday"], row["tel"], row["adress"], row["email"], row["pass_ser"], row["pass_num"], row["spec"], row["worktime"], row["l_w"], row["l_spec"], row["l_m"]