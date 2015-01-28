class CreateOrdersOrderattachments < ActiveRecord::Migration
  def change
    create_table :orders_orderattachments, id: false do |t|
      t.references :order, index: true, null: false
      t.references :order_attachment, index: true, null: false
    end
  end
end
