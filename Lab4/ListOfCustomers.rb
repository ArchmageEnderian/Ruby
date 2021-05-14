require_relative "Customer.rb" 

class ListOfCustomers

	def initialize()
		@mas_of_customers = Array.new()
		read_all
	end

	def read_all
		r = File.dirname(__FILE__)
		File.foreach("#{r}/Customers.txt") { |line| @mas_of_customers << Customer.string_to_object(line.split(";"))}
	end

	def write_all
		r = File.dirname(__FILE__)
		File.write("#{r}/Customers.txt", @mas_of_customers.join("\n"))
	end






























end