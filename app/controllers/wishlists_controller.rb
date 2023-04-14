class WishlistsController < ApplicationController

  def index
    @wishlists = Wishlist.all
  end
  
  def new
    @wishlist = Wishlist.new
  end

  def show 
    @wishlist = Wishlist.find(params[:id])
  end 

  def create
    #debugger
    @wishlist = Wishlist.new(product_id: params[:id], user_id: current_user.id)
    
    if @wishlist.save
      redirect_to wishlists_path, notice: "Added to wishlist"
    else
      render 'new'
    end
    
  end 

  def destroy 
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    redirect_to wishlists_path, notice: "Remove from Wishlist"
  end
  private

    def wishlist_params
      params.require(:wishlist).permit(:product_id, :user_id)
    end

end
