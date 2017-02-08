class UsersController < ApplicationController
	def index
		# session.clear
		@products = Item.get_all
		puts @products
		@categories = Category.get_all
		puts @categories
	end
	def add_item
		if not session[:cart]
			session[:cart] = []
			product = Item.get_one(params[:id])
			session[:cart].push(product)
			flash[:added] = product.name + ' added to your cart'
		else
			product = Item.get_one(params[:id])
			session[:cart].push(product)
			flash[:added] = product.name + ' added to your cart'
		end
		redirect_to root_path 	
	end
	def cart

		@cart = "xxx"
	end
end
