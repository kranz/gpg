class Employee < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "150x150", :thumb => "56x56"}
  
  def fullname
    self.lastname + " " + self.firstname
  end
  
  def avatar_image
    self.avatar_file_name? ? self.avatar.url(:thumb) : "generic_avatar_56.png"
  end

end
