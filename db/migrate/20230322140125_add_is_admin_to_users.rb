class AddIsAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text

    create_table :users do |t|
      t.boolean :is_admin, default: false
    end
  end
end
