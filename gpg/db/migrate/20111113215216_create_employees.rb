class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :fiscalcode
      t.date :birthdate
      t.date :enrolldate
      t.date :leavedate
      t.string :sex

      t.timestamps
    end
  end
end
