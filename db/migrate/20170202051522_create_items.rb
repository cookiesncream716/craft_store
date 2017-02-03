class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :picture
      t.references :category, foreign_key: true
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
