class Employee < ActiveRecord::Base

  def fullname
    self.lastname + " " + self.firstname
  end

end
