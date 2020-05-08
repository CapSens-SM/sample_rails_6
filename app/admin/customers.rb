ActiveAdmin.register Customer do
  config.per_page = 12

  index do
    selectable_column
    column :id
    column :firstname
    column :lastname
    column :email
    column :phone_number
    column :city
    column :language
    column :membership_amount
    column :state
    column :created_at
    column :updated_at
    actions
  end

  
end
