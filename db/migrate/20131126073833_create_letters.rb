class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.text :body
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country

      t.timestamps
    end
  end
end
