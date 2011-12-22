class CreateEsattori < ActiveRecord::Migration
  def change
    create_table :esattori do |t|
      t.string :name
      t.string :code
      t.string :tipo
      t.string :tipo_indennita
      t.integer :valore_indennita

      t.timestamps
    end
  end
end
