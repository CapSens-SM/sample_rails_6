ActiveAdmin.register Customer do
  decorate_with CustomerDecorator

  index do
    selectable_column
    column :id
    column :name, sortable: :lastname
    column :email
    column :phone_number
    column :city
    column :language
    column :membership_amount_in_dollars, sortable: :membership_amount
    column :state do |customer|
      status_tag customer.state
    end
    column :created_at
    column :updated_at
    actions
  end
end
