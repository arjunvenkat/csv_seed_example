class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :street
      t.string :city
      t.integer :zip
      t.string :state
      t.integer :beds
      t.integer :sq_feet
      t.string :category
      t.datetime :sale_date
      t.float :price
      t.float :lat
      t.float :lng

      t.timestamps null: false
    end
  end
end
