class ProductimagesController < ApplicationController
  # before_action :set_product_image, only: [:edit, :update]

  def index
    @productimages = Productimage.all
  end

  def new
    @product = Product.find(params[:product_id])
    @productimages = Productimage.new
  end

  def show 
    @productimage = Productimage.find(params[:id])
  end

  def create
    @productimage = Productimage.new(productimage_params)
    @productimage.product_id = params[:product_id]

    if @productimage.save
        redirect_to product_productimages_path, notice: 'Product image created.'
      else
        render :new, status: :unprocessable_entity
    end
    
  end

  def edit
    @productimage = Productimage.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
    @productimage = Productimage.find(params[:id])
        if @productimage.update(productimage_params)
          redirect_to product_productimage_url
        else
          render 'edit'
        end
  end
  
  def destroy
    @productimage = Productimage.find(params[:id])
    @productimage.product_id = params[:product_id]
    @productimage.destroy

    redirect_to root_path, status: :see_other
end


  private

    def productimage_params
      params.require(:productimage).permit(:image, :product_id)
    end

end
