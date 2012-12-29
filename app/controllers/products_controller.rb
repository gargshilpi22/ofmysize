class ProductsController < ApplicationController

	def index
		@category = Category.all
		@size = Size.where(:size_type => "R")
		@brand = Brand.all
		
		render 'products/search'
	end

	def search
		category = Category.find(params[:category])
		brand = Brand.find(params[:brand])
		gender = params[:gender]
		size = Size.where(:id => params[:size], :size_type => params[:size_type]).first

		category_products = category.products
		brand_products = brand.products
		size_products = size.products
		
		@products = category_products & brand_products & size_products
		if gender
			gender_products = Product.where(:gender => gender)
			@products = @products & gender_products
		end

		render 'products/results'
	end

end