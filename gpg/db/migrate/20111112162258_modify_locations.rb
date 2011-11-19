class ModifyLocations < ActiveRecord::Migration
  def up
    add_column :locations, :address, :string
    rename_column :locations, :nomero_interno, :numero_interno

  end

  def down
    remove_column :locations, :address
  end
end
