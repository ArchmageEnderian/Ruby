require 'fox16'  
include Fox
require_relative 'tkTest.rb'



class MainView < FXMainWindow
    attr_accessor :showButton,
                  :nameField,
                  :controller,
                  :addButton,
                  :searchButton,
                  :editButton,
                  :deleteButton


    def initialize(app, title, w, h, controller)
        super(app, title, :width => w, :height => h)
        @controller = controller
        # Кнопка добавления в БД
        self.addButton = FXButton.new(self, "Добавить сотрудника")
        addButton.connect(SEL_COMMAND, method(:onAddButtonPressed))

        self.showButton = FXButton.new(self, "Вывести всех сотрудников")
        showButton.connect(SEL_COMMAND, method(:onShowButtonPressed))

        self.searchButton = FXButton.new(self, "Поиск сотрудника")
        searchButton.connect(SEL_COMMAND, method(:onSearchButtonPressed))

        self.editButton = FXButton.new(self, "Режим редактирования сотрудника")
        editButton.connect(SEL_COMMAND, method(:onEditButtonPressed))

        self.deleteButton = FXButton.new(self, "Режим удаления сотрудника")
        deleteButton.connect(SEL_COMMAND, method(:onDeleteButtonPressed))


    end

    def create  
        super  
        show(PLACEMENT_SCREEN)  
    end

    def onShowButtonPressed(sender, sel, ptr)
        List_of_emp.new(self.app, "Список сотрудников",800,600, @controller).create
    end

    def onAddButtonPressed(sender, sel, ptr)
        #Временно неработает
    end

    def onSearchButtonPressed(sender, sel, ptr)
        #Временно неработает
    end

    def onEditButtonPressed(sender, sel, ptr)
        #Временно неработает
    end

    def onDeleteButtonPressed(sender, sel, ptr)
        #Временно неработает
    end

    def self.starter(app, controller)
        MainView.new(app,"Главное меню", 210,140,controller)
        app.create
        app.run
    end

end

#app = FXApp.new
#MainView.new(app, "Employee", 200, 600)
#app.create
#app.run















