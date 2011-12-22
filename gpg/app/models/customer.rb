class Customer < ActiveRecord::Base
   has_many :locations, :dependent => :destroy
#   accepts_nested_attributes_for :locations, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
#   accepts_nested_attributes_for :locations
   has_many :contracts
   accepts_nested_attributes_for :contracts
   validates :vatcode, :length => { :is => 11 }
end
