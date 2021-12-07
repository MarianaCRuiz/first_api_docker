class Charge < ApplicationRecord
  before_create do  # before_validation
    self.final_price = price * (1 - (discount.to_f / 100))
  end
end
