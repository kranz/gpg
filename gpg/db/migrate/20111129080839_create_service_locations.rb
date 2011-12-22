class CreateServiceLocations < ActiveRecord::Migration
  def change
    create_table :service_locations do |t|
      t.integer :location_id
      t.integer :contract_id
      t.integer :sequence
      t.boolean :sort_flag

      t.timestamps
    end
  end
end
