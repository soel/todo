class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :contract_number
      t.integer :customer_id
      t.text :request_destination
      t.date :delivery_date
      t.text :status
      t.text :web_url

      t.timestamps
    end
  end
end
