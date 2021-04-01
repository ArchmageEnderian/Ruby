class Employee

def self.Telepfone?(tel)
	if tel.match(/^(\+\s*?7|8)([- ()]*\d){10}$/)
		return true
	end
	return false
end


attr_accessor :fio, :birthdate, :telepfone, :adress, :email, :passport_ser, :passport_num, :spec, :worktime, :last_work_place, :last_spec, :last_money
#Переменные класса
@@counter = 0
#Конструктор
def initialize(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place = NULL, last_spec = NULL, last_money = NULL)
	self.fio = fio
	self.birthdate = birthdate
	self.telepfone = telepfone
	self.adress = adress
	self.email = email
	self.passport_ser = passport_ser
	self.passport_num = passport_num
	self.spec = spec	
	self.worktime = worktime
	self.last_work_place = last_work_place
	self.last_spec = last_spec
	self.last_money = last_money
	@@counter += 1
end


# ^(([+](7))|(8))(\-| |\()?\d{3}(\-| |\))?\d{7}$

def to_s
    t = "ФИО: #{@fio} (#{@spec}); ДР: #{@birthdate};\nКонтакты: #{@telepfone}; #{@email}; #{@adress};\nСтаж: #{@worktime}; Предудыщая работа: #{@last_work_place}; Предудыщая специальность: #{@last_spec}; ЗП: #{@last_money}"
    return t
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


