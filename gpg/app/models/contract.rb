class Contract < ActiveRecord::Base
  belongs_to :customer
  belongs_to :account
  belongs_to :business_type
  belongs_to :collector, :class_name => "Employee", :foreign_key => "collector_id"
  
  def account_code
    account.try(:fullcode)
  end

  def account_code=(fullcode)
    self.account = Account.find_by_fullcode(fullcode) if fullcode.present?
  end
end
