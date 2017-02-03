class Category < ApplicationRecord
	has_many :items

	def self.get_all
		self.all
	end
end
