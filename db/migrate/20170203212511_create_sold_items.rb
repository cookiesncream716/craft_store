class CreateSoldItems < ActiveRecord::Migration[5.0]
  def change
    create_table :sold_items do |t|
      t.string :item
      t.string :references
      t.references :buyer, foreign_key: true
      t.boolean :shipped, default: false
      t.string :date_shipped
      t.string :date

      t.timestamps
    end
  end
end
