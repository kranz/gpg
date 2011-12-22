class ServiceLocation < ActiveRecord::Base  
  belongs_to :contract
  belongs_to :location
end
