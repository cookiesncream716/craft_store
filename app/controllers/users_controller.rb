class UsersController < ApplicationController
	def index
		# session.clear
		@products = Item.get_all
		# puts @products
		@categories = Category.get_all
		# puts @categories
	end
	def add_item
		if not session[:cart]
			session[:cart] = []
			session[:item_id] = []
			product = Item.get_one(params[:id])
			session[:cart].push(product)
			session[:item_id].push(params[:id])
			# puts product.name
			# puts 'create session cart/item id'
			# puts session[:item_id]
			# puts session[:cart]
			flash[:added] = product.name + ' added to your cart'
		else
			product = Item.get_one(params[:id])
			session[:cart].push(product)
			session[:item_id].push(product.id)
			# puts 'adding to session'
			# puts product.id
			# puts session[:item_id]
			# puts session[:cart]
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
	end
	def create
		message = Buyer.create_buyer(user_params)
		puts message
		flash[:message] = message
		# item id = session[:item_id]
		# Cart.create_cart(@message.buyer_id)
		# session[:cart_id] = @id
		# Sold.create_sold(session[:cart_id], session[:item_id])
		# Item.update_item(session[:item_id])
		# session.clear
		redirect_to '/users/purchase'
	end
	def login
		@user = Buyer.find_by(email: params[:email])
		puts @user
		if @user && @user.authenticate(params[:password])
			session[:buyer_id] = @user.id
			redirect_to '/items/cart'
			# redirect_to '/users/cart'
		else
			flash[:message] = ['Invalid Login']
			redirect_to '/users/purchase'
		end
	end
	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :address, :city, :state, :zip, :phone, :email, :password, :password_confirmation)
	end
end
