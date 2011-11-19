class Employee < ActiveRecord::Base
  has_many  :contracts
end
