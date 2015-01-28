class AddMultiToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :multi, :string
  end
end
