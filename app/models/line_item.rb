class LineItem < ApplicationRecord
  belongs_to :tutor
  belongs_to :cart
end
