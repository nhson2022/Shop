class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.boolean :active, value: true
      t.integer :quantity
      t.integer :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
