class AddFieldToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :initial_month, :integer
  end
end
