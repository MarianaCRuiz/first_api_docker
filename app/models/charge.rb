class Charge < ApplicationRecord
  before_create do  #before_validation
    self.result = self.price * (1 - self.discount/100)
  end
end
