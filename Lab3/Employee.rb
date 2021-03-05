class Employee

def initialize(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
	@fio = fio
	@birthdate = birthdate
	@telepfone = telepfone
	@adress = adress
	@email = email
	@passport_ser = passport_ser
	@passport_num = passport_num
	@spec = spec	
	@worktime = worktime
	@last_work_place = last_work_place
	@last_spec = last_spec
	@last_mpney = last_money
end

def Printer
	puts "Вывод:"
	puts @fio
	puts @birthdate
	puts @telepfone
	puts @adress
	puts @email
	puts @passport_ser
	puts @passport_num
	puts @spec
	puts @worktime
	puts @last_work_place
	puts @last_spec
	puts @last_money
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


