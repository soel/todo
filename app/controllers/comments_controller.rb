class CommentsController < ApplicationController
  
  def create
    @user = current_user
    @order = Order.find(params[:order_id])
    @comment = @order.comments.create(comment_params)
    
    commenter = @order.comments.pluck(:user_id)
    commenter.uniq!
    
    users = []
    commenter.each do | c |
      users << User.find(c).email
    end
    
    ordermember = @order.users.pluck(:email)
    
    tomail = users + ordermember
    tomail.uniq!
    
    CommentMailer.comment_email(tomail, @order).deliver
    
    redirect_to order_path(@order)
  end
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end
end
