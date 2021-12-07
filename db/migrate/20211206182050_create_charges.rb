class CreateCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :charges do |t|
      t.integer :book_id
      t.decimal :price
      t.decimal :discount
      t.integer :client_id
      t.decimal :final_price

      t.timestamps
    end
  end
end
