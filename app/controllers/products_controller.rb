class ProductsController < ApplicationController

	def index
		@category = Category.all
		@size = Size.where(:size_type => "R")
		@brand = Brand.all
		
		render 'products/search'
	end

	def search
		category = params[:category]
		brand = params[:brand]
		gender = params[:gender]
		size = params[:size]
		size_type = params[:size_type]

		@products = Product.all
		render 'products/results'
	end

end