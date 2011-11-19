class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :customer_id
      t.integer :collector_id
      t.integer :account_id
      t.integer :business_type_id
      t.string :number
      t.date :date
      t.string :type
      t.boolean :block_flag
      t.date :blocked_at
      t.date :unblocked_at
      t.integer :invoicing_freq
      t.string :invoicing_months

      t.timestamps
    end
  end
end
