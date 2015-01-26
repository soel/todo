class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
    
  end

  def new
    @user = current_user
    @group = Group.all
    @order = Order.new
    respond_with(@order)
  end

  def edit
    @group = Group.all
  end

  def create
    @order = Order.new(order_params)
    #@order = current_user.orders.new(order_params)
    @order.save
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
      :status, :create_at, :web_url, :user_id, :user_ids => [], :group_ids => [] )
    end
end
