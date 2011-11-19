class Location < ActiveRecord::Base
  belongs_to :customer

  def string_address
  separator = self.attribute_present?(:numero_interno) ? "int" : "" 
  @addr = [self.address, 
             self.numero_civico, 
             self.estensione_civico, 
             separator,
             self.numero_interno, 
             self.estensione_interno,
             self.zip,
             self.comune,
             self.provincia]
    @addr.compact.join(" ")
  end 

end
