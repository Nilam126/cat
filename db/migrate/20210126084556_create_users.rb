class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.bigint :contact
      t.string :city
      t.string :address
      t.string :password_digest
      t.integer :uid

      t.timestamps
    end
  end
end
