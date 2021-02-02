class AddEmployee2ToAttendance2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :attendance2s, :employee2
  end
end
