class Item < ApplicationRecord
  belongs_to :category
  has_many :sold_items

  validates :name, :description, :picture, presence: true
  # validates :price, presence: true, format: { :with => /^\d{1,6}(\.\d{0,2})?$/, numericality: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: true
 

  def self.get_all
  	self.all.where(sold: false)
  end
  def self.create_product(product)
  	new_item = self.new(product)
  	puts '##########################'
  	puts product[:name]
  	if new_item.valid? == true
  		new_item.save
  		puts 'saved'
  		@message = ['Item successfully created and saved']
  		return @message
  	else
  		@message = new_item.errors.full_messages
  		puts new_item.errors.full_messages
  		return @message
  	end
  end
  def self.get_one(id)
  	self.find(id)
  end
  # def self.update_item()
    # find each item in cart and mark as sold
  # end
end
