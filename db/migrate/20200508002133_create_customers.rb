class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone_number
      t.string :city
      t.text :profil_picture
      t.string :language
      t.integer :membership_amount
      t.string :state

      t.timestamps
    end
  end
end
