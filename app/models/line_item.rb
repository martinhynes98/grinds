class LineItem < ApplicationRecord
  belongs_to :tutor
  belongs_to :cart
  
  def total_price
    tutor.price * quantity
  end
end
