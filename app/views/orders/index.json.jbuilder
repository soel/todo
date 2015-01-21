json.array!(@orders) do |order|
  json.extract! order, :id, :contract_number, :customer_id, :request_destination, :delivery_date, :status, :create_at, :web_url
  json.url order_url(order, format: :json)
end
