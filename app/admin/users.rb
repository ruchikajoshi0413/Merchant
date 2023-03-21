ActiveAdmin.register User do

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
    permit_params :name, :email ,:password
  
    index do
      selectable_column
      id_column
      column :name 
      column :email
      column :password
    end
  
      filter :name
      filter :email
      filter :password
  
      form do |f|
        f.inputs do
          f.input :name
          f.input :email
          f.input :password
        end
        f.actions
      end 
  
  end
  