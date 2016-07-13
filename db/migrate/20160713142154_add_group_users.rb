class AddGroupUsers < ActiveRecord::Migration
  def change
    create_table :groups_users
    add_column :groups_users, :group_id, :integer
    add_column :groups_users, :user_id, :integer
  end
end
