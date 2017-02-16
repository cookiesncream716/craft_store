class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.references :buyer, foreign_key: true
      t.boolean :shipped
      t.date :date_shipped

      t.timestamps
    end
  end
end
