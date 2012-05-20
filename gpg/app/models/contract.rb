class Contract < ActiveRecord::Base
  before_save :set_cust_name
  
  belongs_to  :customer
  belongs_to  :account
  belongs_to  :business_type
  belongs_to  :contract_type
  belongs_to  :esattore
  
  has_many    :service_locations
  

  def account_code
    account.try(:fullcode)
  end

  def account_code=(fullcode)
    fc=fullcode.split(" - ")[0]
    self.account = Account.find_by_fullcode(fc) if fc.present?
  end

  FREQUENCY = [
    ["Mensile","1"],
    ["Bimestrale","2"],
    ["Trimestrale","3"],
    ["Quadrimestrale","4"],
    ["Semestrale","6"],
    ["Annuale","12"]
  ]


  def location_markers
    @markers = ""
    self.service_locations.each do |sloc|
       @markers = @markers + "&markers=color:red|label:A|" + sloc.location.latitude.to_s + "," + sloc.location.longitude.to_s
    end 
    @markers_url = "http://maps.google.com/maps/api/staticmap?center=Piazza+Corvetto,Genova&zoom=12&size=512x512&maptype=roadmap" + @markers + "&sensor=false&key=MAPS_API_KEY"
  end   



private
  def set_cust_name
    self.customer_name = self.customer.name
  end

end
