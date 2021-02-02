class CreateEmployee2s < ActiveRecord::Migration[6.1]
  def change
    create_table :employee2s do |t|
      t.string :firstname
      t.string :lastname
      t.float :salary
      t.string :gender
      t.bigint :contact
      t.string :email
      t.string :country
      t.string :city
      t.integer :pincode
      t.string :address

      t.timestamps
    end
    add_index :employee2s, :email, unique: true
  end
end
