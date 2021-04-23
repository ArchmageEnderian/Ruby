r = File.dirname(__FILE__)
require "#{r}/Employee.rb"

class ListEmployee

	@@mas_of_emp = Array.new()


	def initialize()
		self.read_all
	end

	def read_all
		r = File.dirname(__FILE__)
		mas_str = File.read("#{r}/Emp.txt").split(";")
		
		while(mas_str[0] != nil)
			@@mas_of_emp << Employee.creator_empolyee_object_from_string(mas_str[0..11].dup)
			mas_str.slice!(0..11)
		end
	end



end