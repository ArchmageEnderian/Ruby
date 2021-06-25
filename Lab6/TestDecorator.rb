#Стандартная зарплата
class Zar_plata_min
  def initialize(minimum)
    @minimum = minimum
  end

  def get_salat
    return @minimum
  end
end

#Стандартный декоратор
class Decorator < Zar_plata_min
  attr_accessor :salary

  def initialize(component)
    @salary = component
  end

end

#С месечными        1
class Decorator_salary_part_Premium < Decorator

  def initialize(salary, fixed_premium)
    super(salary)
    @fixed_premium = fixed_premium
  end

  def get_salat
    (@salary.get_salat + @fixed_premium)
  end
end

#С квартальными     2
class Decorator_salary_part_Award < Decorator
  def initialize(salary, award)
    super(salary)
    @awards = award
  end
  def get_salat
    qwe = @salary.get_salat
    (qwe + ((qwe / 100) * @awards))
  end
end

#С Премией          3
class Decorator_salary_part_Bonus < Decorator
  def initialize(salary, bonus, mini)
    super(salary)
    @bonus = bonus
    @minimum = mini
  end
  def get_salat
    (@salary.get_salat + ((@minimum / 100) * @bonus))
  end
end


class Salary
  # 1 - с месечными, 2 - с квартальными, 3 - с премией
  attr_accessor :fir_k, :sec_k, :tho_k, :minimum_zp

  def get_salary(fir, sec, tho)
    salary_st = Zar_plata_min.new(@minimum_zp)
    if (fir)
      salary_st = Decorator_salary_part_Premium.new(salary_st, @fir_k)
    end
    if (sec)
      salary_st = Decorator_salary_part_Award.new(salary_st, @sec_k)
    end
    if (tho)
      salary_st = Decorator_salary_part_Bonus.new(salary_st, @tho_k, @minimum_zp)
    end
    return salary_st.get_salat
  end

  def minimal_zp
    return Zar_plata_min.new(@minimum_zp).get_salat
  end

  def with_award_and_prem
    salary_st = Zar_plata_min.new(@minimum_zp)
    salary_st = Decorator_salary_part_Premium.new(salary_st, @fir_k)
    return Decorator_salary_part_Award.new(salary_st, @sec_k).get_salat
  end

  def with_prem
    salary_st = Zar_plata_min.new(@minimum_zp)
    return Decorator_salary_part_Premium.new(salary_st, @fir_k).get_salat
  end

end


#qwe = Salary.new
#qwe.fir_k = 10
#qwe.sec_k = 20
#qwe.tho_k = 30
#qwe.minimum_zp = 10

#puts qwe.get_salary(true ,true ,true )
#minSalary = Salary.new #10

#first = Decorator.new(minSalary) #10
#second = DecoratorSalary_part_Premium.new(minSalary) #10 + 10 = 20
#third = DecoratorSalary_part_Award.new(second) # (10 + 10) + 20 = 40
#fourth = DecoratorSalary_part_Bonus.new(DecoratorSalary_part_Award.new(DecoratorSalary_part_Premium.new(Salary.new))) # ((10 + 10) + 20) + 30 = 70

#puts fourth.get_salary
#puts minSalary.get_salary, first.get_salary, second.get_salary, third.get_salary
