class Product < ActiveRecord::Base
	attr_accessible :name, :gender, :image_url

	validates :name, presence: true
	
end