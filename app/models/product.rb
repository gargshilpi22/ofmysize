class Product < ActiveRecord::Base
	attr_accessible :name, :gender

	validates :name, presence: true
	
end