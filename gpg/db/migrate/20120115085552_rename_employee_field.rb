class RenameEmployeeField < ActiveRecord::Migration
  def up
    rename_column :employees, :sex, :gender 
  end

  def down
    rename_column :employees, :gender, :sex 
  end
end
