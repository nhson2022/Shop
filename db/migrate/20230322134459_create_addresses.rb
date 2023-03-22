class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.text :town
      t.string :phone

      t.timestamps
    end
  end
end
