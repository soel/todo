class AddGroupidToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :group_id, :integer
  end
end
