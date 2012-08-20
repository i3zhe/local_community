class CommentsController < ApplicationController
	http_basic_authenticate_with :name => 'jerry', :password => '123', :only => 'destroy'
	
	def create
		@shop = Shop.find(params[:shop_id])
		@comment = @shop.comments.create(params[:comment])
		redirect_to shop_path(@shop)
	end

	def destroy
		@shop = Shop.find(params[:shop_id])
		@comment = @shop.comments.find(params[:id])
		@comment.destroy
		redirect_to shop_path(@shop)
	end


end
