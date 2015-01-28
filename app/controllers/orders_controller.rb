class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    @user = current_user
    @order_attachments = @order.order_attachments.all
    respond_with(@order)
    
  end

  def new
    @user = current_user
    @usera = User.all
    @group = Group.all
    @order = Order.new
    @order_attachment = @order.order_attachments.build
    respond_with(@order)
  end

  def edit
    @group = Group.all
    @usera = User.all
    @order_attachments = @order.order_attachments.new
    @ordera = @order.order_attachments.all
  end

  def create
    @order = Order.new(order_params)
    #@order = current_user.orders.new(order_params)
    @order.save
    #params[:order_attachments]['document'].each do |d|
    #  @order_attachment = @order.order_attachments.create!(:document => d, :order_id => @order.id)
    #end
    
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:contract_number, :customer_id, :request_destination, :delivery_date, 
      :status, :create_at, :web_url, :user_id, order_attachments_attributes: [:id, :order_id, :document],
      :user_ids => [], :group_ids => [] )
    end
end
