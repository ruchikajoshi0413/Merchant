class ProductsController < ApplicationController
    def index 
        # @products = Product.all
        @products = Product.where(user_id: current_user.id)
    end

    def show 
        @product = Product.find(params[:id])
    end

    def new
        @products = Product.new
    end

    def create
      # debugger
        @product = Product.new(product_params)
        @product.user_id = current_user.id
        
        if @product.save
            redirect_to @product
          else
            render :new, status: :unprocessable_entity
        end 
    end
    
    def edit
      # debugger
        @products = Product.find(params[:id])   
    end

    def update
        @product = Product.find(params[:id])
    
        if @product.update(product_params)
          redirect_to @product
        else
          render 'edit'
        end
    end


    def destroy
        @product = Product.find(params[:id])
        @product.destroy
    
        redirect_to root_path, status: :see_other
    end


    private
    def product_params
      params.require(:product).permit(:category_id, :name, :description, :price, :status, :user_id)
    end
    
end
