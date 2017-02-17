class Buyer < ApplicationRecord
  has_many :carts
  
  has_secure_password
  validates :first_name, :last_name, :address, :city, presence: true
  validates :state, presence: true, length: {is: 2}
  validates :zip, presence: true, length: {is: 5}, numericality: {only_integer: true}
  validates :phone, presence: true, length: {is: 10}, numericality: {only_integer: true}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, email: true
  validates :password, length: {minimum: 8}

  def self.create_buyer(buyer)
  	puts '******************'
  	new_buyer = self.new(buyer)
  	if new_buyer.valid? == true
  		new_buyer.save
  		@message = {message: 'Information successfully saved', buyer_id: new_buyer.id}
  		return @message
  	else
  		puts new_buyer.errors.full_messages
  		@message = new_buyer.errors.full_messages
  		return @message
  	end
  end
end
