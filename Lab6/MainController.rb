require_relative 'fox.rb'
require_relative "ListEmployee.rb"


class MainController
  @listed

  def initialize
    @listed = ListEmployee.new
    app = FXApp.new
    MainView.starter(app, self)
  end

  def get_all_emps
    return @listed.printer
  end

  def add_pers(fio, birthdate, telepfone, adress, email, passport_ser, passport_num, spec, worktime, last_work_place, last_spec, last_money)
    @listed.add_person(fio, birthdate, telepfone, adress, email, passport_ser.to_i, passport_num.to_i, spec, worktime, last_work_place, last_spec, last_money)
  end

end

MainController.new