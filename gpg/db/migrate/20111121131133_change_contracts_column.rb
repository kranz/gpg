class ChangeContractsColumn < ActiveRecord::Migration
  def change
    rename_column :contracts, :type, :tipo
  end

end
