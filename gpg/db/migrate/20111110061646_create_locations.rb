class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :type
      t.string :zip
      t.string :comune
      t.string :provincia
      t.string :numero_civico
      t.string :estensione_civico
      t.string :nomero_interno
      t.string :estensione_interno
      t.integer :customer_id

      t.timestamps
    end
  end
end
