require 'fox16'
include Fox

class List_of_emp < FXMainWindow
  attr_accessor :datatable, :controller

  def initialize(app, title, w, h, controller)
    @controller = controller
    super(app, title, :width => w, :height => h)
    contents = FXVerticalFrame.new(self, LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y)
    frame = FXVerticalFrame.new(contents,
                                FRAME_SUNKEN|FRAME_THICK|LAYOUT_FILL_X|LAYOUT_FILL_Y, :padding => 0)
    self.datatable = FXTable.new(frame,
                                 :opts => TABLE_COL_SIZABLE|TABLE_ROW_SIZABLE|LAYOUT_FILL_X|LAYOUT_FILL_Y|TABLE_READONLY,
                                 :padding => 2)
    list_of_emps = controller.get_all_emps
    k = list_of_emps.length - 1
    @datatable.visibleRows = 20
    @datatable.visibleColumns = 8

    @datatable.setTableSize(10, 12)



    (0..k).each do |r|
      pers = list_of_emps[r]
      @datatable.setItemText(r, 0, pers.fio)
      @datatable.setItemText(r, 1, pers.birthdate)
      @datatable.setItemText(r, 2, pers.telephone)
      @datatable.setItemText(r, 3, pers.adress)
      @datatable.setItemText(r, 4, pers.email)
      @datatable.setItemText(r, 5, pers.passport_ser)
      @datatable.setItemText(r, 6, pers.passport_num)
      @datatable.setItemText(r, 7, pers.spec)
      @datatable.setItemText(r, 8, pers.worktime)
      @datatable.setItemText(r, 9, pers.last_work_place)
      @datatable.setItemText(r, 10, pers.last_spec)
      @datatable.setItemText(r, 11, pers.last_money)
    end
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end



end


#List_of_emp.starter