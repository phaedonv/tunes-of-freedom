class AddUserIdToDashboards < ActiveRecord::Migration[6.0]
  def change
    add_column :dashboards, :user_id, :string
  end
end
