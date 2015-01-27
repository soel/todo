class OrderAttachmentsController < ApplicationController
  before_action :set_order_attachment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_attachments = OrderAttachment.all
    respond_with(@order_attachments)
  end

  def show
    respond_with(@order_attachment)
  end

  def new
    @order_attachment = OrderAttachment.new(:order_id => params[:order_id])
    respond_with(@order_attachment)
    #redirect_to order_path(1)
  end

  def edit
  end

  def create
    @order_attachment = OrderAttachment.new(order_attachment_params)
    @order_attachment.save
    #respond_with(@order_attachment)
    redirect_to order_path(@order_attachment.order_id)
  end

  def update
    @order_attachment.update(order_attachment_params)
    redirect_to @order_attachment.order
    #respond_with(@order_attachment)
  end

  def destroy
    @order_attachment.destroy
    respond_with(@order_attachment)
  end

  private
    def set_order_attachment
      @order_attachment = OrderAttachment.find(params[:id])
    end

    def order_attachment_params
      params.require(:order_attachment).permit(:order_id, :document)
    end
end
