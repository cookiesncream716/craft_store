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
		if not session[:cart]
			session[:cart] = []
		end
		@cart = session[:cart]
	end
	def purchase
		@cart = session[:cart]
	end
	def create
		Buyer.create_buyer(user_params)
		puts @message
		# need item id
		# Item.update_item()
		redirect_to root_path
	end
	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :address, :city, :state, :zip, :phone, :password, :password_confirmation)
	end
end
