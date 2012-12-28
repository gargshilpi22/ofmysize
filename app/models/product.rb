class Product < ActiveRecord::Base
	attr_accessible :name, :gender, :image_url

	validates :name, presence: true
	
	has_many :product_brands
	has_many :brands, through: :product_brands

	has_many :product_sizes
	has_many :sizes, through: :product_sizes

	has_many :product_categorys
	has_many :categorys, through: :product_categorys
end