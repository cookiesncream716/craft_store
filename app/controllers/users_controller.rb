class UsersController < ApplicationController
	def index
		@products = Item.get_all
		puts @products
		@categories = Category.get_all
		puts @categories
	end
	def show
		respond_to do | format |
			format.html
			format.js
		end		
	end
end
