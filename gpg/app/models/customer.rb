class Customer < ActiveRecord::Base
   has_many :locations, :dependent => :destroy
#   accepts_nested_attributes_for :locations, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
#   accepts_nested_attributes_for :locations
   has_many :contracts
   accepts_nested_attributes_for :contracts
   validates :vatcode, :length => { :is => 11 }

  def location_markers
    @markers = ""
    self.locations.each do |loc|
       @markers = @markers + "&markers=color:red|label:A|" + loc.latitude.to_s + "," + loc.longitude.to_s
    end 
    @markers_url = "http://maps.google.com/maps/api/staticmap?center=Piazza+Corvetto,Genova&zoom=12&size=512x512&maptype=roadmap" + @markers + "&sensor=false"
  end   
  
end
