class ProductsController < ApplicationController

	def index
		@category = Category.all
		@size = Size.where(:size_type => "R")
		@brand = Brand.all
		
		render 'products/search'
	end

	def search
		category_id = params[:category]
		brand_id = params[:brand]
		gender = params[:gender]
		size = Size.where(:id => params[:size], :size_type => params[:size_type]).first
		@products = size.products

		if category_id
			category = Category.find(category_id)
			category_products = category.products
			@products = @products & category_products
		end

		if brand_id
			brand = Brand.find(brand_id)
			brand_products = brand.products	
			@products = @products & brand_products
		end
		
		if gender
			gender_products = Product.where(:gender => gender)
			@products = @products & gender_products
		end

		render 'products/results'
	end

end