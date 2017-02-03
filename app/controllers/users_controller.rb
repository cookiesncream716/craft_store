class UsersController < ApplicationController
	def index
		@products = Item.get_all
		puts @products
		@categories = Category.get_all
		puts @categories
	end
end
