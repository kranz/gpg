class AddAvatarColumnsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :avatar_file_name, :string
    add_column :employees, :avatar_content_type, :string
    add_column :employees, :avatar_file_size, :integer
    add_column :employees, :avatar_updated_at, :datetime
  end
end
