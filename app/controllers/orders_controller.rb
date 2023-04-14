class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end
  
  def create
      @order = Order.new(product_id: Pcart.find(params[:id]).product.id, 
      user_id: current_user.id, pcart_id: params[:id], status: 'Pending')

    if @order.save
      redirect_to orders_path, notice: 'Order placed successfully'
      
    else
      render :new

    end
  end

  
  private

    def order_params
      params.require(:order).permit(:user_id, :product_id, :pcart_id, :status)
    end

end
