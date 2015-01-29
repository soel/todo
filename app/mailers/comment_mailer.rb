class CommentMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def comment_email(tomail, order)
    sub =  "コメントがありました " + order.contract_number.to_s + " " + order.customer_id.to_s
    #@orderid = order.id
    @owner = order.users[0].username
    @url = 'http://localhost:3000/orders/' + order.id.to_s
    @comment = order.comments.last.body
    
    mail to: tomail, subject: sub
  end
end
