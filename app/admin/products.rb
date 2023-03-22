ActiveAdmin.register Product do

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
  permit_params :name, :description, :price, :category, :status

  index do
    selectable_column
    id_column
    column :name 
    column :description
    column :price 
    column :category 
    column :status
  end

    filter :name
    filter :description
    filter :price 
    filter :category 
    filter :status

    form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :price 
        f.input :category, as: :select, :collection => (Category.pluck(:name))
        f.input :status, as: :select, collection: (['Active','inactive','draft']),selected: 'Active'
      end
      f.actions
    end 

end
