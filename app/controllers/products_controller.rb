class ProductsController < ApplicationController

	def index
		@products = Product.all
		render 'products/search'
	end

	def search
		@products = Product.all
		render 'products/results'
	end

end