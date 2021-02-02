class CreateAttendace3s < ActiveRecord::Migration[6.1]
  def change
    create_table :attendace3s do |t|
      t.integer :employeeid
      t.string :employeename
      t.date :date
      t.time :intime
      t.time :outtime
      t.string :discription

      t.timestamps
    end
  end
end
