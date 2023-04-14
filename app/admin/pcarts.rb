ActiveAdmin.register Pcart do

    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # Uncomment all parameters which should be permitted for assignment
    #
    # permit_params :name, :description, :image, :category_id, :price, :status
    #
    # or
    #
    # permit_params do
    #   permitted = [:name, :description, :image, :category_id, :price, :status]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    permit_params :product_id, :user_id, :quantity
  
    index do
      selectable_column
      id_column
      column :product_id
      column :user_id
      column :quantity 
      
    end
  
      filter :product_id
      filter :user_id
      filter :quantity
       
        
      form do |f|
        f.inputs do
          f.input :product_id
          f.input :user_id
          f.input :quantity 
          
        end
        f.actions
      end 
  
  end
  