class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :codmastro
      t.string :mastro
      t.string :codconto
      t.string :conto
      t.string :codsottoconto
      t.string :sottoconto

      t.timestamps
    end
  end
end
