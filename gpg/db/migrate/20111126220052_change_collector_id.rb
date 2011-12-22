class ChangeCollectorId < ActiveRecord::Migration
  def change
    rename_column :contracts, :collector_id, :esattore_id
  end

end
