class AddCustNameToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :customer_name, :string
  end
end
