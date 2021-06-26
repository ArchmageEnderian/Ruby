require 'fox16'
include Fox

class Add_person < FXMainWindow
  attr_accessor :datatable, :controller, :fioField, :dateField,:telField, :adrField, :emailField, :serField, :numField,
                :specField, :workField, :l_workField, :l_specField, :l_moneyField, :addButton

  def initialize(app, title, w, h, controller)
    @controller = controller
    super(app, title, :width => w, :height => h)

    FXLabel.new(self, "Имя рабочего: ")
    self.fioField = FXTextField.new(self, 40)
    FXLabel.new(self, "Дата рождения рабочего: ")
    self.dateField = FXTextField.new(self, 40)
    FXLabel.new(self, "Телефон рабочего: ")
    self.telField = FXTextField.new(self, 40)
    FXLabel.new(self, "Адресс рабочего: ")
    self.adrField = FXTextField.new(self, 40)
    FXLabel.new(self, "Email рабочего: ")
    self.emailField = FXTextField.new(self, 40)
    FXLabel.new(self, "Серия пасспорта рабочего: ")
    self.serField = FXTextField.new(self, 40)
    FXLabel.new(self, "Номер пасспорта рабочего: ")
    self.numField = FXTextField.new(self, 40)
    FXLabel.new(self, "Специальность рабочего: ")
    self.specField = FXTextField.new(self, 40)
    FXLabel.new(self, "Стаж рабочего: ")
    self.workField = FXTextField.new(self, 40)
    FXLabel.new(self, "Последнее место работы рабочего: ")
    self.l_workField = FXTextField.new(self, 40)
    FXLabel.new(self, "Последняя специальность рабочего: ")
    self.l_specField = FXTextField.new(self, 40)
    FXLabel.new(self, "Последняя заработная плата рабочего: ")
    self.l_moneyField = FXTextField.new(self, 40)
    self.addButton = FXButton.new(self, "Добавить сотрудника!")
    addButton.connect(SEL_COMMAND, method(:onAddButtonPressed))

  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end

  def onAddButtonPressed(sender, sel, ptr)
    #@controller.add_pers("Иллидан Ярость Бури", "00.00.0000", "88005553535", "Калимдор", "IllidanStormrage@Blizzard.com", "6666", "666666", "Повелитель Запределья, Хозяин Черного Храма", "10000", "Калимдор", "Чародей, Воин, Боец, Маг, Разбойник, Охотник на демонов", "10000")
    #@controller.add_pers(@fioField, @dateField, @telField, @adrField, @emailField, @serField, @numField, @specField, @workField, @l_workField, @l_specField, @l_moneyField)
    self.close
  end

end


