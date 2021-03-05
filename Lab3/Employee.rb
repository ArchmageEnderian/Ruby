class Employee
#Переменные класса
@@counter = 0
#Конструктор
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
	@@counter += 1
end
#ALL_Getter

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

#Поле Getter's

def fio
	@fio
end
def birthdate
	@birthdate
end
def telepfone
	@telepfone
end
def adress
	@adress
end
def email
	@email
end
def passport_ser
	@passport_ser
end
def passport_num
	@passport_num
end
def spec
	@spec
end
def worktime
	@worktime
end
def last_work_place
	@last_work_place
end
def last_spec
	@last_spec
end
def last_money
	@last_money
end

#Поле Setter's

def fio = (value)
	@fio = (value)
end
def birthdate = (value)
	@birthdate = (value)
end
def telepfone = (value)
	@telepfone = (value)
end
def adress = (value)
	@adress = (value)
end
def email = (value)
	@email = (value)
end
def passport_ser = (value)
	@passport_ser = (value)
end
def passport_num = (value)
	@passport_num = (value)
end
def spec = (value)
	@spec = (value)
end
def worktime = (value)
	@worktime = (value)
end
def last_work_place = (value)
	@last_work_place = (value)
end
def last_spec = (value)
	@last_spec = (value)
end
def last_money = (value)
	@last_money = (value)
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


