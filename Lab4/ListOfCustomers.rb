require_relative "Customer.rb" 

class ListOfCustomers

	def initialize()
		@mas_of_customers = Array.new()
		read_all
	end

	def read_all
		#Fix
		r = File.dirname(__FILE__)
		#mas_str = File.read("#{r}/Customers.txt").split(";")

		#while(mas_str[0] != nil)
			#@mas_of_emp << Employee.creator_empolyee_object_from_string(mas_str[0..11])
			#mas_str.slice!(0..11)
		#end
	end

	def write_all
		r = File.dirname(__FILE__)
		File.write("#{r}/Customers.txt", @mas_of_emp.join("\n"))
	end






























end