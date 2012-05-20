class AddFieldsToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :email, :string
    add_column :employees, :phone_number, :string
        
  end
end
