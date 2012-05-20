class AddFieldsToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :description, :string
  end
end
