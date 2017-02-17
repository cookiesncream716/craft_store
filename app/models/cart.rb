class Cart < ApplicationRecord
  belongs_to :buyer
  has_many :solds

  def self.create_cart(buyer)
  	new_cart = self.new(buyer_id: buyer)
  	if new_cart.valid? == true
  		new_cart.save
  		@id = new_cart.id
  		return @id
  end
end
