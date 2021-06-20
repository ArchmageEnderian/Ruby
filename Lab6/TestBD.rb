#!/usr/bin/ruby
require 'mysql2'

client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "myDataBase")


client.query("INSERT INTO emp (fio, birthday, tel, adress, email, pass_ser, pass_num, spec, worktime, l_w, l_spec, l_m) VALUES ('Жора Ярость Бури', '00000000', '88005553535', 'Калимдор', 'IllidanStormrage@Blizzard.com', '6666', '666666', 'Повелитель Запределья, Хозяин Черного Храма', '10000', 'Калимдор', 'Чародей, Воин, Боец, Маг, Разбойник', '10000');") 
#INSERT INTO emp (fio, birthday, tel, adress, email, pass_ser, pass_num, spec, worktime, l_w, l_spec, l_m) VALUES ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12');

results = client.query("SELECT * FROM emp")

results.each do |row|
	puts row
end


#