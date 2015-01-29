class CommentsController < ApplicationController
  
  def create
    @user = current_user
    @order = Order.find(params[:order_id])
    @comment = @order.comments.create(comment_params)
    
    if params[:commentattachments].present?
      params[:commentattachments]['document'].each do |a|
        @commentattachment = @comment.commentattachments.create!(:document => a, :comment_id => @comment.id)
      end
    end
    
    commenter = @order.comments.pluck(:user_id)
    commenter.uniq!
    
    users = []
    commenter.each do | c |
      users << User.find(c).email
    end
    
    ordermember = @order.users.pluck(:email)
    ordergroup = @order.grmails.pluck(:email)
    
    tomail = users + ordermember + ordergroup
    tomail.uniq!
    
    CommentMailer.comment_email(tomail, @order).deliver
    
    redirect_to order_path(@order)
  end
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id, commentattachments_attributes: [:id, :post_id, :document])
    end
end
