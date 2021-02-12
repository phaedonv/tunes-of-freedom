class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :status, :text
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
