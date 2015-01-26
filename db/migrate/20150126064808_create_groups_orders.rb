class CreateGroupsOrders < ActiveRecord::Migration
  def change
    create_table :groups_orders, id: false do |t|
      t.references :group, index: true, null: false
      t.references :order, index: true, null: false
    end
  end
end
