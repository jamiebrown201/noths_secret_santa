class AddPriceLimitToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :price_limit, :decimal, :precision => 8, :scale => 2
  end
end
