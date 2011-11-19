class Account < ActiveRecord::Base
  before_save :set_fullcode
  has_many :contracts


private
  def set_fullcode
    self.fullcode = self.codmastro + self.codconto+self.codsottoconto
  end
end
