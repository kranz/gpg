class ChangeContractTypeInContracts < ActiveRecord::Migration
  def change
    remove_column :contracts, :tipo
    add_column :contracts, :contract_type_id, :integer
  end
end
