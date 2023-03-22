class MerchantidsController < ApplicationController
    def index 
        @merchantids = Merchantid.all
        # @merchantids = Merchantid.where(user_id:current_user.id)
    end
    def show
        @merchantid = Merchantid.find(params[:id])
    end
    def new
        @merchantids = Merchantid.new
    end
    def create
      
        @merchantid = Merchantid.new(params[:id])
        #@merchantid.user_id = current_user.id
       
        if @merchantid.save
            redirect_to @merchantid
          else
            render :new
          end 
    end
    private
    def merchantid_params 
        params.require(:merchantid).permit(:idname, :idproof, :status)
    end
end
