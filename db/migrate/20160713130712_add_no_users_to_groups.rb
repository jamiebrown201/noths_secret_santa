class AddNoUsersToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :no_users, :integer
  end
end
