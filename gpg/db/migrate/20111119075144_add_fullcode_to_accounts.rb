class AddFullcodeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :fullcode, :string
  end
end
