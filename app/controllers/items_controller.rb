class ItemsController < ApplicationController
	def create
		puts '*********************'
		puts params['item'][:name]
		error = Item.create_product(item_params)
		puts '8888888888888888888888'
		puts @messages
		redirect_to root_path
	end
	def show
		@item = Item.get_one(params[:id])
	end
	def cart
		puts session[:cart]
		@items = session[:cart]
	end
	private
	def item_params
		params.require(:item).permit(:name, :description, :price, :picture, :category_id)
	end
end
