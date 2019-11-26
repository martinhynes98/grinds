class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  
  def add_tutor(tutor)
    current_item = line_items.find_by(tutor_id: tutor.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(tutor_id: tutor.id)
    end
    current_item
  end
end
