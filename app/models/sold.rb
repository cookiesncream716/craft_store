class Sold < ApplicationRecord
  belongs_to :cart
  belongs_to :item

  def self.create_sold(cart, items)
  	items.each do | id |
  		self.create(cart_id: cart, item_id: id)
  	end
  end

end
