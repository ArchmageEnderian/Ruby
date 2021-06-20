#Стандартная зарплата
class Salary
  def get_salary
    return 10
  end
end

#Стандартный декоратор (супер класс)
class Decorator < Salary
  attr_accessor :salary

  def initialize(component)
    @salary = component
  end

  def get_salary
    @salary.get_salary
  end

end

#С месечными
class DecoratorSalary_part_Premium < Decorator
  def get_salary
    (@salary.get_salary + 10)
  end
end

#С квартальными
class DecoratorSalary_part_Award < Decorator
  def get_salary
    (@salary.get_salary + 20)
  end
end

#Премия
class DecoratorSalary_part_Bonus < Decorator
  def get_salary
    (@salary.get_salary + 30)
  end
end




#minSalary = Salary.new #10

#first = Decorator.new(minSalary) #10
#second = DecoratorSalary_part_Premium.new(minSalary) #10 + 10 = 20
#third = DecoratorSalary_part_Award.new(second) # (10 + 10) + 20 = 40
#fourth = DecoratorSalary_part_Bonus.new(DecoratorSalary_part_Award.new(DecoratorSalary_part_Premium.new(Salary.new))) # ((10 + 10) + 20) + 30 = 70

#puts fourth.get_salary
#puts minSalary.get_salary, first.get_salary, second.get_salary, third.get_salary
