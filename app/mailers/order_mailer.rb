class OrderMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def order_email(user, order)
    sub = "収容依頼 " + order.contract_number.to_s + " " + order.customer_id.to_s
    @orderid = order.id
    @owner = order.users[0].username
    @url = 'http://localhost:3000/orders/' + order.id.to_s
    mail to: user, subject: sub
  end
end
