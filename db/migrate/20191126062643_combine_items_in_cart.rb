class CombineItemsInCart < ActiveRecord::Migration[5.2]
  def up
    Cart.all.each do |cart|
	  sums = cart.line_items.group(:tutor_id).sum(:quantity)
	  sums.each do |tutor_id, quantity|
	    if quantity > 1

		  # remove individual items
		  cart.line_items.where(tutor_id: tutor_id).delete_all

		  # replace with single item and record quantity
		  item = cart.line_items.build(tutor_id: tutor_id)
		  item.quantity = quantity
		  item.save!
		end
	  end
	end
  end
end
