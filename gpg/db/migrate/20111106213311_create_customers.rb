class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :vatcode
      t.string :fiscalcode
      t.string :code

      t.timestamps
    end
  end
end
