class PcartsController < ApplicationController
  def index
    @pcarts = Pcart.all
  end

  def new
    @pcart = Pcart.new
  end

  def show
    @pcart = Pcart.find(params[:id])
  end

  def cart
    #debugger
    # @pcart.product_id = params[:product_id]
    @pcart = Pcart.new(product_id: params[:id], user_id: current_user.id, quantity: 1)
    if @pcart.save
      redirect_to pcarts_path, notice: 'added to cart'
      else
        render :new
    end 
  end

  def destroy
    # debugger
    @pcart = Pcart.find(params[:id])
    @pcart.destroy
      redirect_to pcarts_path, notice: "Product Removed Successfully"
  end

  private

    def pcart_params
      params.require(:pcart).permit(:user_id, :product_id, :quantity)
    end

end
