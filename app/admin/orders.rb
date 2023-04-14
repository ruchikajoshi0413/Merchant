ActiveAdmin.register Order do

permit_params :user_id, :product_id, :pcart_id, :status

index do
    selectable_column
    id_column
    column :user_id
    column :product_id
    column :pcart_id 
    column :status
  end

    filter :user_id
    filter :product_id
    filter :pcart_id 
    filter :status

    form do |f|
      f.inputs do
        f.input :user_id
        f.input :product_id
        f.input :pcart_id 
        f.input :status, as: :select, collection: (['Pending','Complete','Shipped']),selected: 'Pending'
      end
      f.actions
    end 

end