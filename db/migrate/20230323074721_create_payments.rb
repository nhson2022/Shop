class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :paid
      t.references :cart, null: true, foreign_key: true
      t.references :user, null: true, foreign_key: true
      t.references :address, null: true, foreign_key: true

      t.timestamps
    end
  end
end
