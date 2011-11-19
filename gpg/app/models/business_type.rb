class BusinessType < ActiveRecord::Base
  has_many :contracts
  validates_presence_of :name
  paginates_per 5
end
